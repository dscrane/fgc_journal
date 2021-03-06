import 'package:fgc/screens/section_cover_screen.dart';
import 'package:fgc/app_state.dart';
import 'package:fgc/data/journal_entries.dart';
import 'package:fgc/data/letters.dart';
import 'package:fgc/data/mines_and_minesweeping.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            mainAxisSpacing: 20,
            children: <Widget>[
              ListCard(
                title: 'FGC Journal',
                thumbnail: "assets/fred_journal/images/journal_thumbnail.jpeg",
                entryType: JournalEntry,
                entries: journalEntries,
              ),
              ListCard(
                title: 'Letters',
                thumbnail: "assets/letters/images/letters_thumbnail.jpeg",
                entryType: LetterEntries,
                entries: letterEntries,
              ),
              // ListCard(
              //   title: 'Mine Sweeping',
              //   thumbnail: "assets/mines_and_minesweeping/minesweeping_thumbnail.jpeg",
              //   entryType: bool,
              //   entries: {},
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.title,
    required this.thumbnail,
    required this.entries,
    required this.entryType,
  }) : super(
          key: key,
        );

  final Type entryType;
  final Map<dynamic, Map<String, dynamic>> entries;
  final String title;
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AppState>().updateEntryType(entryType);
        context.read<AppState>().updateEntries(entries);
        Navigator.pushNamed(
          context,
          SectionCoverScreen.id,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 100,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFD3D3D3).withOpacity(.84),
                              offset: Offset(0, 10),
                              blurRadius: 33,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              thumbnail,
                              filterQuality: FilterQuality.medium,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
