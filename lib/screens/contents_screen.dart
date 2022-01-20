import 'package:fgc/app_state.dart';
import 'package:fgc/views/desktop_view.dart';
import 'package:fgc/views/mobile_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentsScreen extends StatelessWidget {
  static const id = "content_screen";
  const ContentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (kIsWeb) {
        return DesktopView(
          entries: context.watch<AppState>().entries,
          entryType: context.watch<AppState>().entryType,
        );
      } else {
        return MobileView(
          entries: context.watch<AppState>().entries,
          entryType: context.watch<AppState>().entryType,
        );
      }
    });
  }
}
