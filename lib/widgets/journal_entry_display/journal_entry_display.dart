import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JournalEntryDisplay extends StatelessWidget {
  const JournalEntryDisplay({Key? key, required this.entry}) : super(key: key);

  final Map<String, dynamic> entry;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CupertinoScrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(
              top: 8.0,
              left: 15.0,
              right: 15.0,
              bottom: 15.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  entry['entry'],
                  softWrap: true,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                SizedBox(height: entry['afterEntry'] != null ? 15.0 : 0.0),
                Text(
                  entry['afterEntry'] ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText2,
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
    );
  }
}
