import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/enums.dart';
import 'package:mood_up_recruitment_task/features/pages/home_page/home_page.dart';
import 'package:mood_up_recruitment_task/features/pages/search_page/cubit/search_page_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
                          results.clear();
                        },
                        child: Text("cancel")),
                  ]),
            ),
            BlocBuilder<SearchPageCubit, SearchPageState>(
              builder: (context, state) {
                switch (state.searchStatus) {
                  case SearchStatus.emptyTitle:
                  case SearchStatus.initial:
                    return Center(
                      child: Column(
                        children: [
                          Icon(Icons.menu_book),
                          Text("Start typing to find a particular comics.")
                        ],
                      ),
                    );
                  case SearchStatus.error:
                    print(state.errorMessage);
                    return Center(
                      child: Text(state.errorMessage ?? ""),
                    );
                  case SearchStatus.empty:
                    return Center(
                      child: Column(
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
                            //  final comic = state.results[index];
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
                                      imageUrl:
                                          //  comic.thumbnail.path
                                          //             .split("/")
                                          //             .last ==
                                          //         "image_not_available"
                                          //     ? "non"

                                          // :
                                          comic.thumbnail.path +
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

// class ComicWidget extends StatelessWidget {
//   const ComicWidget(
//       {super.key,
//       required this.height,
//       required this.width,
//       required this.comic,
//       required this.index});

//   final double height;
//   final double width;
//   final Result comic;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 225,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.all(
//             Radius.circular(height * 0.025),
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes position of shadow
//             ),
//           ]),
//       margin: EdgeInsets.all(width * 0.025),
//       child: Wrap(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(height * 0.025),
//               topLeft: Radius.circular(height * 0.025),
//             ),
//             child: Image.network(
//               comic.thumbnail.path +
//                   "/portrait_xlarge." +
//                   comic.thumbnail.extension,
//               loadingBuilder: (context, child, loadingProgress) {
//                 if (loadingProgress == null) return child;

//                 return Center(child: CircularProgressIndicator());
//               },
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.all(width * 0.025),
//             width: width * 0.5,
//             height: 225,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text("$index ${comic.title}"),
//                 Text(comic.creators.items.isNotEmpty
//                     ? "Written by ${comic.creators.items[0].name}"
//                     : "No creator data avalible"),
//                 SizedBox(
//                   height: height * 0.02,
//                 ),
//                 Text(
//                   maxLines: 5,
//                   overflow: TextOverflow.ellipsis,
//                   comic.description == null || comic.description!.isEmpty
//                       ? comic.textObjects[0].text
//                       : comic.description!,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
