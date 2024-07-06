import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:mood_up_recruitment_task/features/pages/detalis_page/widgets/find_out_button.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';



class SlideUpPanel extends StatelessWidget {
  const SlideUpPanel({
    super.key,
    required this.width,
    required this.height,
    required this.detailsModel,
    required this.websiteUri,
  });

  final double width;
  final double height;
  final DetailsModel detailsModel;
  final Uri websiteUri;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SlidingUpPanel(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(width * 0.05),
              topRight: Radius.circular(width * 0.05)),
          color: Colors.white,
          panel: Padding(
            padding: EdgeInsets.all(width * 0.02),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(width * 0.02),
                  height: height * 0.01,
                  width: width * 0.2,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(115, 158, 158, 158),
                      borderRadius: BorderRadius.circular(width * 0.01)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    detailsModel.title,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Wrap(
                    children: [
                      Text(
                        "Written by ",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      for (final creator in detailsModel.creators) ...[
                        Text(
                          "${creator.name}, ",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ]
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      detailsModel.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        FindOutButton(websiteUri: websiteUri, width: width),
      ],
    );
  }
}