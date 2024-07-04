import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mood_up_recruitment_task/domain/models/data_model.dart';
import 'package:mood_up_recruitment_task/device_size.dart';
import 'package:mood_up_recruitment_task/domain/models/details_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key, required this.detailsModel});
  final DetailsModel detailsModel;

  @override
  Widget build(BuildContext context) {
    final websiteUri = Uri.parse(detailsModel.url[0].url!);
    double height = DeviceSize(context).height;
    double width = DeviceSize(context).width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: Stack(
        children: [
          detailsModel.imageUrl == "non"
              ? Image(image: AssetImage("assets/PlaceholderCover.png"))
              : Image.network(
                  detailsModel.imageUrl,
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;

                    return Center(child: CircularProgressIndicator());
                  },
                ),
          Positioned(
              child: Column(
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
                      Text(detailsModel.title),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            detailsModel.description,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      launchUrl(websiteUri, mode: LaunchMode.inAppBrowserView);
                    },
                    child: Text("Find out more")),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
