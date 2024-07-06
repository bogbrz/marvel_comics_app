import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:url_launcher/url_launcher.dart';

class FindOutButton extends StatelessWidget {
  const FindOutButton({
    super.key,
    required this.websiteUri,
    required this.width,
  });

  final Uri websiteUri;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          launchUrl(websiteUri, mode: LaunchMode.inAppBrowserView);
        },
        child: Container(
          margin: EdgeInsets.all(width * 0.005),
          padding: EdgeInsets.all(width * 0.01),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(width * 0.02),
            color: Colors.red,
          ),
          width: double.infinity,
          child: Center(
              child: Text(
            "Find out more",
            style: Theme.of(context).textTheme.bodyLarge,
          )),
        ),
      ),
    );
  }
}
