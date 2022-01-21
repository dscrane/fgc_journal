import 'package:fgc/app_state.dart';
import 'package:fgc/widgets/custom_header.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:fgc/widgets/table_of_contents/table_of_contents.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key, required this.entries, required this.entryType}) : super(key: key);

  final Map<dynamic, Map<String, dynamic>> entries;
  final Type entryType;

  @override
  Widget build(BuildContext context) {
    Widget header = Flexible(
      child: Text(
        'Index',
        textAlign: TextAlign.center,
        style: context.watch<AppState>().entryTitleTextStyle,
      ),
    );

    return DisplayScaffold(
      header: CustomHeader(
        hasDrawer: true,
        header: header,
      ),
      body: TableOfContents(
        entries: entries,
        entryType: entryType,
      ),
    );
  }
}
