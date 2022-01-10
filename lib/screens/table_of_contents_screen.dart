import 'dart:developer';

import 'package:fgc/sections/fred_journal/journal_entries.dart';
import 'package:fgc/screens/journal_entry_screen.dart';
import 'package:fgc/sections/letters/letters.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../sections/fred_journal/fred_journal_state.dart';

class TableOfContentsScreen extends StatefulWidget {
  static const id = 'table_of_contents_screen';

  TableOfContentsScreen({Key? key}) : super(key: key);

  @override
  State<TableOfContentsScreen> createState() => _TableOfContentsScreenState();
}

@override
class _TableOfContentsScreenState extends State<TableOfContentsScreen> {
  List<Widget> _createIndex(BuildContext context, entryType, currentEntries) {
    List<Widget> index = [];
    currentEntries.forEach((entryKey, entryContent) {
      if (entryKey == JournalEntry.errorEntry ||
          entryKey == LetterEntries.errorEntry) {
        return;
      }
      index.add(
        InkWell(
          onTap: () {
            context.read<FredJournalState>().updateCurrentEntryKey(entryKey);
            Navigator.pushNamed(
              context,
              JournalEntryScreen.id,
              arguments: EntryScreenArguments(entryType, entryContent),
            );
          },
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          child: ListTile(
            enableFeedback: true,
            contentPadding:
                EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
            visualDensity: VisualDensity.compact,
            title: Text(
              entryContent['title'],
              overflow: TextOverflow.ellipsis,
              style: context.watch<FredJournalState>().indexEntryTitleTextStyle,
            ),
            trailing: Text(
              entryContent['date'],
              style: context.read<FredJournalState>().indexEntryDateTextStyle,
            ),
          ),
        ),
      );
    });
    inspect(index);
    return index;
  }

  @override
  Widget build(BuildContext context) {
    final TableOfContentsScreenArguments args = ModalRoute.of(context)
        ?.settings
        .arguments as TableOfContentsScreenArguments;
    Map<dynamic, Map<String, dynamic>> entries = args.entries;
    Type entryType = args.entryType;

    return DisplayScaffold(
      hasDrawer: true,
      beforeEntry: SizedBox(),
      header: Expanded(
        child: Text(
          'Index',
          textAlign: TextAlign.center,
          style: context.watch<FredJournalState>().entryTitleTextStyle,
        ),
      ),
      entry: Expanded(
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          children: _createIndex(context, entryType, entries),
        ),
      ),
    );
  }
}

class TableOfContentsScreenArguments {
  final Map<dynamic, Map<String, dynamic>> entries;
  final Type entryType;
  TableOfContentsScreenArguments(this.entryType, this.entries);
}
