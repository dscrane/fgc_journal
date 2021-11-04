import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class ScreenArguments {
  final Map<String, dynamic> entry;
  ScreenArguments(this.entry);
}

Size _textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style), maxLines: 2, textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  return textPainter.size;
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
        padding: EdgeInsets.only(top: 8.0, left: 0.0, right: 0.0, bottom: 8.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 255.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(
                  entry['title'],
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: context.watch<AppState>().entryTitleTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      date: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Text(
              entry['beforeEntry'] ?? '',
              textAlign: TextAlign.center,
              style: context.watch<AppState>().entryTextStyle,
            ),
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
      child: Expanded(
        child: CupertinoScrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.only(top: 8.0, left: 15.0, right: 15.0, bottom: 15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    entry['entry'],
                    softWrap: true,
                    style: context.watch<AppState>().entryTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
