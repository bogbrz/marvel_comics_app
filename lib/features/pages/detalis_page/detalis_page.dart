import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mood_up_recruitment_task/app/core/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/features/pages/detalis_page/widgets/slide_up_panel.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.detailsModel});
  final DetailsModel detailsModel;

  @override
  Widget build(BuildContext context) {
    final websiteUri = Uri.parse(detailsModel.url[0].url);
    double height = DeviceSize(context).height;
    double width = DeviceSize(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          detailsModel.imageUrl == "non"
              ? Center(
                  child: Image(
                  image: AssetImage(
                    "assets/PlaceholderCover.png",
                  ),
                  width: width,
                  height: height,
                  fit: BoxFit.fill,
                ))
              : CachedNetworkImage(
                  imageUrl: detailsModel.imageUrl,
                  placeholder: (context, url) {
                    return Center(child: CircularProgressIndicator());
                  },
                ),
          Positioned(
              child: SlideUpPanel(
                  width: width,
                  height: height,
                  detailsModel: detailsModel,
                  websiteUri: websiteUri))
        ],
      ),
    );
  }
}



