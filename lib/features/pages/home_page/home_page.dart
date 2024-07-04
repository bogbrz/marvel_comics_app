import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/data_source.dart';
import 'package:mood_up_recruitment_task/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/domain/repositories/data_repository.dart';
import 'package:mood_up_recruitment_task/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/cubit/home_page_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomePage extends StatelessWidget {
  HomePage({
    super.key,
  });
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double height = DeviceSize(context).height;
    double width = DeviceSize(context).width;
    List<Result> results = [];

    int skip = 0;
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        skip += 20;
        print("SKIP : $skip");
        context.read<HomePageCubit>().getMoreData(
              skip: skip,
            );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Marvel Comics",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body:
          BlocBuilder<HomePageCubit, HomePageState>(builder: (context, state) {
        results.addAll(state.results);

        print("total ${state.data?.total}");
        print(results);
        switch (state.status) {
          case Status.initial:
          case Status.error:
            return Center(
              child: Text(state.errorMessage.toString()),
            );
          case Status.loading:
            return Center(
              child: CircularProgressIndicator(),
            );
          case Status.loadingMore:
          // TODO: Handle this case.
          case Status.succes:
            // skip += 20;
            print("RESUTS HOME PAGE ${results.length}");
            return ListView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              controller: scrollController,
              itemCount: results.length + 1,
              itemBuilder: (context, index) {
                if (index < results.length) {
                  final comic = results[index];
                  return InkWell(
                      onTap: () => context.push("/detalisPage",
                          extra: DetailsModel(
                            description: comic.textObjects.isEmpty
                                ? comic.description!
                                : comic.textObjects[0].text!,
                            creators: comic.creators.items,
                            title: comic.title!,
                            url: comic.urls!
                                .where((element) => element.type == "detail")
                                .toList(),
                            imageUrl: comic.thumbnail.path!.split("/").last ==
                                    "image_not_available"
                                ? "non"
                                : comic.thumbnail.path! +
                                    "/detail." +
                                    comic.thumbnail.extension!,
                          )),
                      child: ComicWidget(
                        height: height,
                        width: width,
                        comic: comic,
                        index: index,
                      ));
                } else {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: width * 0.02),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              },
            );
        }
      }),
    );
  }
}

class ComicWidget extends StatelessWidget {
  const ComicWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.comic,
      required this.index});
  final int index;
  final double height;
  final double width;
  final Result comic;

  @override
  Widget build(BuildContext context) {
    print(comic.thumbnail.path.split("/"));

    print(
      comic.thumbnail.path! + "/portrait_xlarge." + comic.thumbnail.extension!,
    );
    return Container(
      height: 225,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(height * 0.025),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      margin: EdgeInsets.all(width * 0.025),
      child: Wrap(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(height * 0.025),
              topLeft: Radius.circular(height * 0.025),
            ),
            child:
                comic.thumbnail.path!.split("/").last == "image_not_available"
                    ? Image(
                        image: AssetImage("assets/PlaceholderCover.png"),
                        height: 225,
                      )
                    : Image.network(
                        comic.thumbnail.path! +
                            "/portrait_xlarge." +
                            comic.thumbnail.extension!,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }

                          return SizedBox.shrink();
                        },
                      ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.025),
            width: width * 0.5,
            height: 225,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${comic.title}",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(comic.creators.items.isNotEmpty
                    ? "Written by ${comic.creators.items[0].name}"
                    : "No creator data avalible"),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  comic.textObjects.isEmpty
                      ? comic.description ?? "No data avalible"
                      : comic.textObjects[0].text,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
