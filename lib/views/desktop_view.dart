import 'package:fgc/app_state.dart';
import 'package:fgc/widgets/custom_header.dart';
import 'package:fgc/widgets/display_scaffold.dart';
import 'package:fgc/widgets/journal_entry_display/journal_entry_display.dart';
import 'package:fgc/widgets/table_of_contents/table_of_contents.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DesktopView extends StatefulWidget {
  const DesktopView({Key? key, required this.entries, required this.entryType}) : super(key: key);

  final Map<dynamic, Map<String, dynamic>> entries;
  final Type entryType;

  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? currentEntry =
        widget.entries[context.watch<AppState>().currentEntryKey] ??
            widget.entries[widget.entries.keys.first];

    Widget indexHeader = Flexible(
      child: Text(
        'Index',
        textAlign: TextAlign.center,
        style: context.watch<AppState>().entryTitleTextStyle,
      ),
    );

    Widget entryHeader = Flexible(
        child: Text(
      currentEntry?['title'],
      maxLines: 3,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1,
    ));

    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: DisplayScaffold(
              header: CustomHeader(
                hasDrawer: false,
                header: indexHeader,
              ),
              body: TableOfContents(
                entries: widget.entries,
                entryType: widget.entryType,
              ),
              beforeEntry: SizedBox(),
            ),
          ),
          Expanded(
            flex: 6,
            child: DisplayScaffold(
              header: CustomHeader(
                hasLeadingButton: false,
                hasDrawer: true,
                header: entryHeader,
              ),
              body: JournalEntryDisplay(entry: currentEntry ?? AppState.errorEntry),
              beforeEntry: SizedBox(),
            ),
          )
        ],
      ),
    );
  }
}
