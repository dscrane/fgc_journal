import 'package:fgc/screens/journal_entry_screen/journal_entry_screen.dart';
import 'package:fgc/screens/table_of_contents_screen/table_of_contents_screen.dart';
import 'package:fgc/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';
import 'entries/journal_entries.dart';

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
    journalEntries.keys.map((entryKey) {
      print(entryKey);
      return ListTile();
    });
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        TableOfContentsScreen.id: (context) => TableOfContentsScreen(),
        JournalEntryScreen.id: (context) => JournalEntryScreen(),
      },
    );
  }
}
