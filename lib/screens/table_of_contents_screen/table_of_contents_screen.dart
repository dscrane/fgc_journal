import 'package:fgc/entries/journal_entries.dart';
import 'package:fgc/screens/journal_entry_screen/journal_entry_screen.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class TableOfContentsScreen extends StatefulWidget {
  static const id = 'table_of_contents_screen';
  const TableOfContentsScreen();

  @override
  State<TableOfContentsScreen> createState() => _TableOfContentsScreenState();
}

class _TableOfContentsScreenState extends State<TableOfContentsScreen> {
  List<Widget> _createIndex(BuildContext context) {
    List<Widget> index = [];
    journalEntries.forEach((entryKey, entryContent) {
      index.add(
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
          visualDensity: VisualDensity.compact,
          onTap: () {
            Navigator.pushNamed(context, JournalEntryScreen.id,
                arguments: ScreenArguments(entryContent));
          },
          title: Text(
            entryContent['title'],
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.getFont(
              context.watch<AppState>().fontFamily,
              color: Colors.grey.shade900,
              fontSize: context.watch<AppState>().fontSize,
              fontWeight: context.read<AppState>().fontFamily == 'Caveat'
                  ? FontWeight.w600
                  : FontWeight.w500,
            ),
          ),
          trailing: Text(entryContent['date'],
              style: GoogleFonts.getFont(context.read<AppState>().fontFamily,
                  color: Colors.grey.shade900,
                  fontSize: context.watch<AppState>().fontSize *
                      (context.read<AppState>().fontSize > 24 ? .70 : .85),
                  fontWeight: context.read<AppState>().fontFamily == 'Caveat'
                      ? FontWeight.w700
                      : FontWeight.w500)),
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
        child: Text('Index',
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(context.watch<AppState>().fontFamily,
                textStyle: TextStyle(
                  fontSize: context.watch<AppState>().fontSize * 1.25,
                  color: Colors.grey.shade900,
                ))),
      ),
      child: Expanded(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _createIndex(context),
            ),
          ),
        ),
      ),
    );
  }
}
