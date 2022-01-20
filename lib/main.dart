import 'package:fgc/screens/landing_screen.dart';
import 'package:fgc/screens/section_cover_screen.dart';
import 'package:fgc/screens/journal_entry_screen.dart';
import 'package:fgc/screens/contents_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

void main() {
  runApp(ChangeNotifierProvider<AppState>(
    create: (_) => AppState(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String currentFontFamily = context.watch<AppState>().fontFamily;
    final double currentFontSize = context.watch<AppState>().fontSize;
    precacheImage(AssetImage("assets/display_images/canvas.jpg"), context);
    precacheImage(AssetImage("assets/display_images/paper_white.jpg"), context);
    precacheImage(AssetImage("assets/display_images/paper_dark.jpg"), context);
    return MaterialApp(
      title: 'Fred G Crane',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: currentFontFamily,
            fontWeight: currentFontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
            fontSize: currentFontSize * 1.25,
            color: Colors.grey.shade900,
          ),
          subtitle1: TextStyle(
            fontFamily: currentFontFamily,
            color: Colors.grey.shade900,
            fontSize: currentFontSize * (currentFontSize > 24 ? .70 : .85),
            fontWeight: currentFontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
          ),
          subtitle2: TextStyle(
            fontFamily: currentFontFamily,
            color: Colors.grey.shade900,
            fontSize: currentFontSize * (currentFontSize > 24 ? .70 : .85),
            fontWeight: currentFontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontFamily: currentFontFamily,
            fontSize: currentFontSize,
            height: 1.15,
            color: Colors.grey.shade800,
            fontWeight: currentFontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
          ),
          button: TextStyle(
            fontFamily: 'Dosis',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: Color(0xff000000),
            shadows: [
              Shadow(
                color: Colors.white,
                offset: Offset.fromDirection(180.0, 2.0),
                blurRadius: 1.0,
              ),
              Shadow(
                color: Color(0xFF465A39),
                offset: Offset.fromDirection(180.0, 1.0),
                blurRadius: 1.0,
              ),
            ],
          ),
        ),
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        SectionCoverScreen.id: (context) => SectionCoverScreen(),
        // FredJournalCoverScreen.id: (context) => FredJournalCoverScreen(),
        // LettersCoverScreen.id: (context) => LettersCoverScreen(),
        ContentsScreen.id: (context) => ContentsScreen(),
        JournalEntryScreen.id: (context) => JournalEntryScreen(),
      },
    );
  }
}
