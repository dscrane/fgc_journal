import 'package:fgc/sections/fred_journal/screens/fred_journal_cover_screen/fred_journal_cover_screen.dart';
import 'package:fgc/sections/mines_and_minesweeping/mines_and_minesweeping.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  static const id = 'landing_screen';
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, FredJournalCoverScreen.id);
                },
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 70,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/fred_journal/images/journal_cover.jpg"),
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.black45, width: 1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 2.0,
                              spreadRadius: 3.0,
                              // offset:
                            )
                          ],
                        ),
                      ),
                    ),
                    Text('FGC Journal')
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MinesAndMinesweeping.id);
                },
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      width: 70,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Colors.black45, width: 1.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 2.0,
                              spreadRadius: 3.0,
                              // offset:
                            )
                          ],
                        ),
                      ),
                    ),
                    Text('Minesweeping')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
