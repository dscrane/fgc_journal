import 'package:fgc/widgets/display_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_state.dart';

class JournalEntryScreen extends StatefulWidget {
  static const id = 'journal_entry_screen';
  const JournalEntryScreen({Key? key}) : super(key: key);

  @override
  State<JournalEntryScreen> createState() => _JournalEntryScreenState();
}

class _JournalEntryScreenState extends State<JournalEntryScreen> {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final Map<String, dynamic> entry = args.entry;
    return DisplayScaffold(
      hasDrawer: false,
      header: Padding(
        padding: EdgeInsets.only(top: 8.0, left: 0.0, right: 0.0, bottom: 8.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 255.0,
          ),
          child: Expanded(
            flex: 1,
            child: Text(
              entry['title'],
              maxLines: 3,
              textAlign: TextAlign.center,
              style: context.watch<AppState>().entryTitleTextStyle,
            ),
          ),
        ),
      ),
      beforeEntry: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            entry['beforeEntry'] ?? '',
            textAlign: TextAlign.center,
            style: context.watch<AppState>().entryTextStyle,
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
      entry: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: kIsWeb ? 700.0 : double.infinity,
        ),
        child: Expanded(
          child: CupertinoScrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.only(
                    top: 8.0, left: 15.0, right: 15.0, bottom: 15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      entry['entry'],
                      softWrap: true,
                      style: context.watch<AppState>().entryTextStyle,
                    ),
                    SizedBox(height: entry['afterEntry'] != null ? 15.0 : 0.0),
                    Text(
                      entry['afterEntry'] ?? '',
                      textAlign: TextAlign.center,
                      style: context.watch<AppState>().entryTextStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(entry['additionalContent'] ?? ''),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ScreenArguments {
  final Map<String, dynamic> entry;
  ScreenArguments(this.entry);
}

Size _textSize(String text, TextStyle style) {
  final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr)
    ..layout(minWidth: 0, maxWidth: double.infinity);
  print(textPainter.size);
  return textPainter.size;
}
