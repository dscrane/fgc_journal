import 'package:fgc/entries/journal_entries.dart';
import 'package:fgc/screens/journal_entry_screen/journal_entry_screen.dart';
import 'package:fgc/screens/welcome_screen/welcome_screen.dart';
import 'package:fgc/widgets/settings_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class TableOfContentsScreen extends StatefulWidget {
  static const id = 'table_of_contents_screen';
  const TableOfContentsScreen();

  @override
  State<TableOfContentsScreen> createState() => _TableOfContentsScreenState();
}

class _TableOfContentsScreenState extends State<TableOfContentsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> _createIndex(context) {
    List<Widget> index = [];
    journalEntries.forEach((entryKey, entryContent) {
      index.add(
        ListTile(
          visualDensity: VisualDensity.compact,
          onTap: () {
            Navigator.pushNamed(context, JournalEntryScreen.id,
                arguments: ScreenArguments(entryContent));
          },
          title: Text(entryContent['title'], style: GoogleFonts.dosis(fontSize: kFontSize * 1.1)),
          trailing: Text(entryContent['date'], style: GoogleFonts.dosis(fontSize: kFontSize)),
        ),
      );
    });
    return index + index;
  }

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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // colorFilter: ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
            colorFilter: ColorFilter.mode(Color(0x6A2C2C35), BlendMode.hardLight),
            image: AssetImage("assets/images/paper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 00.0, left: 8.0, right: 8.0, bottom: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.shade800),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pushNamed(context, WelcomeScreen.id);
                        },
                      ),
                      Expanded(
                        child: Text(
                          'Index',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: kFontSize),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.view_headline),
                        onPressed: _openEndDrawer,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: _createIndex(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: SafeArea(
        child: SettingsDrawer(),
      ),
    );
  }
}
