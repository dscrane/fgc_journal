import 'package:fgc/screens/table_of_contents_screen/table_of_contents_screen.dart';
import 'package:fgc/screens/welcome_screen/welcome_screen.dart';
import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

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
  late bool _darkTheme;
  late bool _paperTexture;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void _closeEndDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: SafeArea(child: SettingsDrawer()),
      body: Container(
        decoration: BoxDecoration(
          image: context.watch<AppState>().paperTexture
              ? DecorationImage(
                  colorFilter: context.read<AppState>().darkTheme
                      ? ColorFilter.mode(Color(0x6A2C2C35), BlendMode.hardLight)
                      : ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
                  image: AssetImage("assets/images/paper.jpg"),
                  fit: BoxFit.cover,
                )
              : null,
        ),
        child: SafeArea(
          child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0, bottom: 30.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade800),
                  ),
                ),
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
                        if (widget.hasDrawer) {
                          Navigator.pushNamed(context, WelcomeScreen.id);
                        } else {
                          Navigator.pushNamed(context, TableOfContentsScreen.id);
                        }
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
            ),
            widget.child,
          ]),
        ),
      ),
    );
  }
}
