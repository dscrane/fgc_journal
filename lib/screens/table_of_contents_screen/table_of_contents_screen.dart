import 'package:fgc/entries/journal_entries.dart';
import 'package:fgc/screens/journal_entry_screen/journal_entry_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class TableOfContentsScreen extends StatelessWidget {
  static const id = 'table_of_contents_screen';
  const TableOfContentsScreen();

  List<Widget> createIndex(context) {
    List<Widget> index = [];
    journalEntries.forEach((entryKey, entryContent) {
      index.add(
        ListTile(
          visualDensity: VisualDensity.compact,
          onTap: () {
            Navigator.pushNamed(context, JournalEntryScreen.id,
                arguments: ScreenArguments(entryContent));
          },
          title: Text(entryContent['title']),
          trailing: Text(entryContent['date']),
        ),
      );
    });
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
              image: AssetImage("assets/images/paper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0, left: 8.0, right: 8.0, bottom: 0.0),
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
                          Navigator.pushNamed(context, TableOfContentsScreen.id);
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
                        onPressed: () {
                          Navigator.pushNamed(context, TableOfContentsScreen.id);
                        },
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
                    children: createIndex(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
