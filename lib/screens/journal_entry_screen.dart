import 'package:fgc/widgets/custom_header.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fgc/widgets/journal_entry_display/journal_entry_display.dart';
import '../app_state.dart';

class JournalEntryScreen extends StatefulWidget {
  static const id = 'journal_entry_screen';
  const JournalEntryScreen({Key? key, this.passedEntry}) : super(key: key);

  final Map<String, dynamic>? passedEntry;
  @override
  State<JournalEntryScreen> createState() => _JournalEntryScreenState();
}

class _JournalEntryScreenState extends State<JournalEntryScreen> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> entry = context.read<AppState>().currentEntry;

    Widget header = Flexible(
      child: Padding(
        padding: EdgeInsets.only(top: 8.0, left: 0.0, right: 0.0, bottom: 8.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 255.0,
          ),
          child: Text(
            entry['title'],
            maxLines: 3,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );

    return DisplayScaffold(
      header: CustomHeader(
        hasDrawer: true,
        header: header,
      ),
      beforeEntry: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            entry['beforeEntry'] ?? '',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Text(
              entry['date'],
              softWrap: true,
              style: context.watch<AppState>().entryTextStyle,
            ),
          ),
        ],
      ),
      body: JournalEntryDisplay(entry: entry),
    );
  }
}

class EntryScreenArguments {
  final Map<String, dynamic> entry;
  final Type entryType;
  EntryScreenArguments(this.entryType, this.entry);
}

Size _textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style), maxLines: 1, textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  print(textPainter.size);
  return textPainter.size;
}
