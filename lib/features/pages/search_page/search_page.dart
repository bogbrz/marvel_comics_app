import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/app/core/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/app/core/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/comic_tile_wiget/comic_widget.dart';
import 'package:mood_up_recruitment_task/features/pages/search_page/cubit/search_page_cubit.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final controller = TextEditingController();
  final scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    double height = DeviceSize(context).height;
    double width = DeviceSize(context).width;
    List<Result> results = [];

    int skip = 0;

    scrollController.addListener(() {
      if (scrollController.position.atEdge &&
          scrollController.position.pixels != 0) {
        skip += 20;
        context
            .read<SearchPageCubit>()
            .getMoreData(skip: skip, title: controller.text);
      }
    });

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(width * 0.025),
              child: SearchBar(
                  controller: controller,
                  onSubmitted: (value) {
                    context
                        .read<SearchPageCubit>()
                        .getComicsByTitle(title: value, skip: skip);
                  },
                  onChanged: (value) {
                    skip = 0;
                    results.clear();

                    if (value.isNotEmpty && results.isEmpty) {}
                  },
                  leading: Icon(Icons.search_rounded),
                  trailing: [
                    TextButton(
                        onPressed: () {
                          controller.text = "";
                          skip = 0;
                        },
                        child: Text(
                          "cancel",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )),
                  ]),
            ),
            BlocBuilder<SearchPageCubit, SearchPageState>(
              builder: (context, state) {
                switch (state.searchStatus) {
                  case SearchStatus.initial:
                    return InitialSearchPage(height: height);
                  case SearchStatus.error:
                    print(state.errorMessage);
                    return ErrorSearchPage(
                      errorMessage: state.errorMessage,
                    );
                  case SearchStatus.empty:
                    return EmpySearchPage(height: height);
                  case SearchStatus.loading:
                    return Center(child: CircularProgressIndicator());
                  case SearchStatus.success:
                    results.addAll(state.results);
                    print(" RESULTS LENGHT ${results.length} ");
                    return Expanded(
                      child: ListView.builder(
                        controller: scrollController,
                        itemCount: results.length + 1,
                        itemBuilder: (context, index) {
                          if (index < results.length) {
                            final comic = results[index];
                            return InkWell(
                              onTap: () => context.push("/detalisPage",
                                  extra: DetailsModel(
                                      description: comic.description == null ||
                                              comic.description!.isEmpty
                                          ? comic.textObjects[0].text
                                          : comic.description!,
                                      creators: comic.creators.items,
                                      title: comic.title!,
                                      url: comic.urls
                                          .where((element) =>
                                              element.type == "detail")
                                          .toList(),
                                      imageUrl: comic.thumbnail.path +
                                          "/detail." +
                                          comic.thumbnail.extension)),
                              child: ComicWidget(
                                height: height,
                                width: width,
                                comic: comic,
                                index: index,
                              ),
                            );
                          } else if (state.hasMore == false) {
                            return Center(
                              child: Text("No more data"),
                            );
                          } else {
                            return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: width * 0.02),
                                child:
                                    Center(child: CircularProgressIndicator()));
                          }
                        },
                      ),
                    );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class EmpySearchPage extends StatelessWidget {
  const EmpySearchPage({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search_off,
            size: height * 0.25,
            color: Colors.grey,
          ),
          Text(
            textAlign: TextAlign.center,
            "There is no comic book with that name in our library. Check the spelling and try again.",
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}

class ErrorSearchPage extends StatelessWidget {
  const ErrorSearchPage({
    super.key,
    required this.errorMessage,
  });
  final String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(errorMessage ?? ""),
        ],
      ),
    );
  }
}

class InitialSearchPage extends StatelessWidget {
  const InitialSearchPage({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.menu_book,
            size: height * 0.25,
            color: Colors.grey,
          ),
          Text(
            textAlign: TextAlign.center,
            "Start typing to find a particular comics.",
            style: Theme.of(context).textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
