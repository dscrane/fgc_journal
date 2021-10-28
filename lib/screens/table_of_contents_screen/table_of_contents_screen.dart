import 'package:fgc/entries/journal_entries.dart';
import 'package:fgc/screens/journal_entry_screen/journal_entry_screen.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class TableOfContentsScreen extends StatefulWidget {
  static const id = 'table_of_contents_screen';

  TableOfContentsScreen({Key? key}) : super(key: key);

  @override
  State<TableOfContentsScreen> createState() => _TableOfContentsScreenState();
}

class _TableOfContentsScreenState extends State<TableOfContentsScreen> {
  List<Widget> _createIndex(BuildContext context) {
    List<Widget> index = [];
    journalEntries.forEach((entryKey, entryContent) {
      index.add(
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, JournalEntryScreen.id,
                arguments: ScreenArguments(entryContent));
          },
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          child: ListTile(
            enableFeedback: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
            visualDensity: VisualDensity.compact,
            title: Text(
              entryContent['title'],
              overflow: TextOverflow.ellipsis,
              style: context.watch<AppState>().indexEntryTitleTextStyle,
            ),
            trailing: Text(
              entryContent['date'],
              style: context.read<AppState>().indexEntryDateTextStyle,
            ),
          ),
        ),
      );
    });
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return DisplayScaffold(
      hasDrawer: true,
      header: Expanded(
        child: Text(
          'Index',
          textAlign: TextAlign.center,
          style: context.watch<AppState>().entryTitleTextStyle,
        ),
      ),
      child: Expanded(
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          children: _createIndex(context),
        ),
      ),
    );
  }
}
