import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';

import '../../app_state.dart';

class ScreenArguments {
  final Map<String, dynamic> entry;
  ScreenArguments(this.entry);
}

class JournalEntryScreen extends StatefulWidget {
  static const id = 'journal_entry_screen';
  const JournalEntryScreen({Key? key}) : super(key: key);

  @override
  State<JournalEntryScreen> createState() => _JournalEntryScreenState();
}

class _JournalEntryScreenState extends State<JournalEntryScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final Map<String, dynamic> entry = args.entry;

    return DisplayScaffold(
      hasDrawer: false,
      header: Padding(
        padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0, bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              entry['title'],
              style: GoogleFonts.getFont(
                context.watch<AppState>().fontFamily,
                textStyle: TextStyle(
                  fontSize: context.watch<AppState>().fontSize * 1.5,
                  color: Colors.grey.shade900,
                ),
              ),
            ),
          ],
        ),
      ),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  entry['entry'],
                  style: GoogleFonts.getFont(
                    context.watch<AppState>().fontFamily,
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w500,
                      height: 1.15,
                      fontSize: context.watch<AppState>().fontSize,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  // style: GoogleFonts.badScript(textStyle: TextStyle(height: 1.15, fontSize: 18.0))
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
