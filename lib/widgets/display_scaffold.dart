import 'package:fgc/constants.dart';
import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class DisplayScaffold extends StatefulWidget {
  const DisplayScaffold({
    Key? key,
    required this.entry,
    required this.header,
    required this.hasDrawer,
    required this.beforeEntry,
  }) : super(key: key);

  final Widget header;
  final Widget beforeEntry;
  final Widget entry;
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
  void initState() {
    _decoration = context.read<AppState>().backgroundDecoration;
    super.initState();
  }

  late BoxDecoration? _decoration;

  @override
  Widget build(BuildContext context) {
    print(_decoration);
    return Scaffold(
      backgroundColor:
          context.read<AppState>().darkTheme ? kDarkColor : kLightColor,
      key: _scaffoldKey,
      endDrawer: SettingsDrawer(),
      body: Center(
        child: Container(
          decoration: _decoration,
          child: SafeArea(
            minimum: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
            child: FractionallySizedBox(
              widthFactor: kIsWeb ? .75 : 1,
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
                  widget.beforeEntry,
                  widget.entry,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
