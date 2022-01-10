import 'package:fgc/screens/landing_screen.dart';
import 'package:fgc/sections/fred_journal/screens/fred_journal_cover_screen.dart';
import 'package:fgc/screens/journal_entry_screen.dart';
import 'package:fgc/screens/table_of_contents_screen.dart';
import 'package:fgc/sections/letters/letters_cover_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sections/fred_journal/fred_journal_state.dart';

void main() {
  runApp(ChangeNotifierProvider<FredJournalState>(
    create: (_) => FredJournalState(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/fred_journal/images/canvas.jpg"), context);
    precacheImage(AssetImage("assets/fred_journal/images/paper_white.jpg"), context);
    precacheImage(AssetImage("assets/fred_journal/images/paper_dark.jpg"), context);
    return MaterialApp(
      title: 'Fred G Crane',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        FredJournalCoverScreen.id: (context) => FredJournalCoverScreen(),
        LettersCoverScreen.id: (context) => LettersCoverScreen(),
        TableOfContentsScreen.id: (context) => TableOfContentsScreen(),
        JournalEntryScreen.id: (context) => JournalEntryScreen(),
      },
    );
  }
}
