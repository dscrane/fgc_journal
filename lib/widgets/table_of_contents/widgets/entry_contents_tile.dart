import 'package:flutter/material.dart';

class EntryContentsTile extends StatelessWidget {
  const EntryContentsTile({Key? key, this.entryContent}) : super(key: key);
  final dynamic entryContent;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enableFeedback: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 0.0),
      visualDensity: VisualDensity.compact,
      title: Text(
        entryContent['title'],
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      trailing: Text(
        entryContent['date'],
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }
}
