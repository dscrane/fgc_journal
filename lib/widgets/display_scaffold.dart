import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class DisplayScaffold extends StatefulWidget {
  const DisplayScaffold(
      {Key? key, required this.child, required this.header, required this.hasDrawer})
      : super(key: key);

  final Widget header;
  final Widget child;
  final bool hasDrawer;

  @override
  _DisplayScaffoldState createState() => _DisplayScaffoldState();
}

class _DisplayScaffoldState extends State<DisplayScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: SettingsDrawer(),
      body: Container(
        decoration: context.watch<AppState>().backgroundDecoration,
        child: SafeArea(
          minimum: EdgeInsets.symmetric(horizontal: 18.0, vertical: 0.0),
          child: Column(
            children: <Widget>[
              Container(
                decoration: widget.hasDrawer
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.grey.shade800),
                        ),
                      )
                    : null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black45,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    widget.header,
                    IconButton(
                      icon: Icon(
                        Icons.view_headline,
                        color: Colors.black45,
                      ),
                      onPressed: _openEndDrawer,
                    )
                  ],
                ),
              ),
              widget.child,
            ],
          ),
        ),
      ),
    );
  }
}
