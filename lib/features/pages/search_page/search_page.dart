import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/comic_widget.dart';
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
                        child: Text("cancel")),
                  ]),
            ),
            BlocBuilder<SearchPageCubit, SearchPageState>(
              builder: (context, state) {
                switch (state.searchStatus) {
                  case SearchStatus.initial:
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.menu_book),
                          Text("Start typing to find a particular comics.")
                        ],
                      ),
                    );
                  case SearchStatus.error:
                    print(state.errorMessage);
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(state.errorMessage ?? ""),
                        ],
                      ),
                    );
                  case SearchStatus.empty:
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_off),
                          Text(
                              "There is no comic book with that name in our library. Check the spelling and try again."),
                        ],
                      ),
                    );
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
