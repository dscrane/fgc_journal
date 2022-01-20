import 'package:fgc/constants.dart';
import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:fgc/app_state.dart';

class DisplayScaffold extends StatefulWidget {
  const DisplayScaffold({
    Key? key,
    required this.body,
    this.header,
    required this.beforeEntry,
  }) : super(key: key);

  final Widget? header;
  final Widget beforeEntry;
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
                  minimum: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                  child: Column(
                    children: [
                      widget.header ?? SizedBox(),
                      widget.beforeEntry,
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
