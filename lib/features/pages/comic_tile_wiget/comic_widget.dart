import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';

class ComicWidget extends StatelessWidget {
  const ComicWidget({
    super.key,
    required this.height,
    required this.width,
    required this.comic,
    required this.index,
  });

  final int index;
  final double height;
  final double width;
  final Result? comic;

  @override
  Widget build(BuildContext context) {

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
            offset: Offset(0, 3),
          ),
        ],
      ),
      margin: EdgeInsets.all(width * 0.025),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(height * 0.025),
              topLeft: Radius.circular(height * 0.025),
            ),
            child:
                comic!.thumbnail.path.split("/").last == "image_not_available"
                    ? Image.asset(
                        "assets/PlaceholderCover.png",
                        height: 225,
                        width: width * 0.367,
                        fit: BoxFit.cover,
                      )
                    : CachedNetworkImage(
                        key: UniqueKey(),
                        placeholder: (context, url) => Container(
                          height: 225,
                          width: width * 0.367,
                          color: Colors.grey[300],
                          child: Center(child: CircularProgressIndicator()),
                        ),
                        imageUrl: comic!.thumbnail.path +
                            "/portrait_xlarge." +
                            comic!.thumbnail.extension,
                        fit: BoxFit.cover,
                      ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: width * 0.025),
              height: 225,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${comic!.title}",
                    style: Theme.of(context).textTheme.headlineSmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Text(
                    comic!.creators.items.isNotEmpty
                        ? "Written by ${comic!.creators.items[0].name}"
                        : "No creator data available",
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      comic!.textObjects.isEmpty
                          ? comic!.description ?? "No data available"
                          : comic!.textObjects[0].text,
                      style: Theme.of(context).textTheme.bodySmall,
                      maxLines: 5,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
