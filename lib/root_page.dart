import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:mood_up_recruitment_task/device_size.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key, required this.navigationShell})
      : super(key: key ?? const ValueKey<String>("NavigatorPage"));
  final StatefulNavigationShell navigationShell;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  var index = 0;
  @override
  Widget build(
    BuildContext context,
  ) {
    double widht = DeviceSize(context).width;
    double height = DeviceSize(context).height;

    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: BottomNavigationBar(
          iconSize: height * 0.04,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (newIndex) {
            setState(() {
              index = newIndex;
            });

            _onTap(context, newIndex);
          },
          currentIndex: index,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded), label: ""),
          ]),
    );
  }

  void _onTap(BuildContext context, int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }
}
