import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class JournalEntryDisplay extends StatelessWidget {
  const JournalEntryDisplay({Key? key, required this.entry}) : super(key: key);

  final Map<String, dynamic> entry;

  @override
  Widget build(BuildContext context) {
    final ScrollController _entryScrollController = ScrollController();
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          top: kIsWeb ? 20.0 : 8.0,
          left: kIsWeb ? 110.0 : 15.0,
          right: kIsWeb ? 110.0 : 15.0,
          bottom: 15.0,
        ),
        child: ListView(
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
    );
  }
}
