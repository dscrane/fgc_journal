import 'package:fgc/constants.dart';
import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fgc/app_state.dart';

class DisplayScaffold extends StatefulWidget {
  const DisplayScaffold({
    Key? key,
    this.header,
    // required this.beforeEntry,
    required this.body,
  }) : super(key: key);

  final Widget? header;
  // final Widget beforeEntry;
  final Widget body;

  @override
  _DisplayScaffoldState createState() => _DisplayScaffoldState();
}

class _DisplayScaffoldState extends State<DisplayScaffold> {
  @override
  void initState() {
    _decoration = context.read<AppState>().backgroundDecoration;
    super.initState();
  }

  late BoxDecoration? _decoration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.watch<AppState>().darkTheme ? kDarkColor : kLightColor,
      endDrawer: SettingsDrawer(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                decoration: context.watch<AppState>().backgroundDecoration,
                child: SafeArea(
                  minimum: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
                  child: Column(
                    children: [
                      widget.header ?? SizedBox(),
                      widget.body,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
