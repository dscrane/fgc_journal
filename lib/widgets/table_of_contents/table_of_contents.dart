import 'package:fgc/screens/journal_entry_screen.dart';
import 'package:fgc/app_state.dart';
import 'package:fgc/data/journal_entries.dart';
import 'package:fgc/data/letters.dart';
import 'package:fgc/widgets/table_of_contents/widgets/entry_contents_tile.dart';
import 'package:fgc/widgets/table_of_contents/widgets/letter_contents_title.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableOfContents extends StatefulWidget {
  const TableOfContents({Key? key, required this.entries, required this.entryType})
      : super(key: key);

  final Map<dynamic, Map<String, dynamic>> entries;
  final Type entryType;

  @override
  _TableOfContentsState createState() => _TableOfContentsState();
}

class _TableOfContentsState extends State<TableOfContents> {
  List<Widget> _createMobileIndex(BuildContext context, entryType, currentEntries) {
    List<Widget> index = [];
    currentEntries.forEach((entryKey, entryContent) {
      if (entryKey == JournalEntry.errorEntry || entryKey == LetterEntries.errorEntry) {
        return;
      }
      index.add(
        InkWell(
          onTap: () {
            context.read<AppState>().updateCurrentEntryKey(entryKey);
            context.read<AppState>().updateCurrentEntry(widget.entries[entryKey]);

            Navigator.pushNamed(
              context,
              JournalEntryScreen.id,
            );
          },
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          child: entryType == JournalEntry
              ? EntryContentsTile(entryContent: entryContent)
              : LetterContentsTile(entryContent: entryContent),
        ),
      );
    });
    return index;
  }

  List<Widget> _createDesktopIndex(BuildContext context, entryType, currentEntries) {
    List<Widget> index = [];
    currentEntries.forEach((entryKey, entryContent) {
      if (entryKey == JournalEntry.errorEntry || entryKey == LetterEntries.errorEntry) {
        return;
      }
      index.add(
        InkWell(
          onTap: () {
            context.read<AppState>().updateCurrentEntryKey(entryKey);
            context.read<AppState>().updateCurrentEntry(widget.entries[entryKey]);
          },
          highlightColor: Colors.red,
          splashColor: Colors.blue,
          child: entryType == JournalEntry
              ? EntryContentsTile(entryContent: entryContent)
              : LetterContentsTile(entryContent: entryContent),
        ),
      );
    });
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        // mainAxisSize: MainAxisSize.min,
        children: !kIsWeb
            ? _createMobileIndex(context, widget.entryType, widget.entries)
            : _createDesktopIndex(context, widget.entryType, widget.entries),
      ),
    );
  }
}

class ContentsScreenArguments {
  final Map<dynamic, Map<String, dynamic>> entries;
  final Type entryType;
  ContentsScreenArguments(this.entryType, this.entries);
}
