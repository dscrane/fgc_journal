import 'package:fgc/constants.dart';
import 'package:fgc/screens/table_of_contents_screen/table_of_contents_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenArguments {
  final Map<String, dynamic> entry;
  ScreenArguments(this.entry);
}

class JournalEntryScreen extends StatelessWidget {
  static const id = 'journal_entry_screen';
  const JournalEntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    final Map<String, dynamic> entry = args.entry;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
            image: AssetImage("assets/images/paper.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pushNamed(context, TableOfContentsScreen.id);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 8.0, bottom: 0.0),
                      child: Text(
                        entry['date'],
                        style: GoogleFonts.dosis(fontSize: kFontSize * 1.1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 0.0, left: 0.0, right: 0.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      entry['title'],
                      style: GoogleFonts.dosis(fontSize: kFontSize * 1.5),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          entry['entry'],
                          style: GoogleFonts.courgette(
                              textStyle: TextStyle(height: 1.15, fontSize: 18.0, color: Colors.grey.shade800)),
                          // style: GoogleFonts.badScript(textStyle: TextStyle(height: 1.15, fontSize: 18.0))
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
