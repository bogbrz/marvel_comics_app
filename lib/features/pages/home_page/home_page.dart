import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/app/core/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/app/core/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/comic_tile_wiget/comic_widget.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/cubit/home_page_cubit.dart';

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


 
        switch (state.status) {
          case Status.error:
            return Center(
              child: Text(state.errorMessage.toString()),
            );
          case Status.initial:
          case Status.loading:
            return Center(
              child: CircularProgressIndicator(),
            );

          case Status.succes:
      
        
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
                                : comic.textObjects[0].text,
                            creators: comic.creators.items,
                            title: comic.title!,
                            url: comic.urls
                                .where((element) => element.type == "detail")
                                .toList(),
                            imageUrl: comic.thumbnail.path.split("/").last ==
                                    "image_not_available"
                                ? "non"
                                : comic.thumbnail.path +
                                    "/detail." +
                                    comic.thumbnail.extension,
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
