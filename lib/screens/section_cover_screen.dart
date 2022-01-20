import 'package:fgc/screens/contents_screen.dart';
import 'package:fgc/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SectionCoverScreen extends StatefulWidget {
  static const id = "section_cover_screen";
  const SectionCoverScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SectionCoverScreen> createState() => _SectionCoverScreenState();
}

class _SectionCoverScreenState extends State<SectionCoverScreen> {
  @override
  Widget build(BuildContext context) {
    Type entryType = context.read<AppState>().entryType;
    String thumbnail = entryType.toString() == 'LetterEntries'
        ? "assets/letters/images/letters_thumbnail.jpeg"
        : "assets/fred_journal/images/journal_thumbnail.jpeg";

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(thumbnail),
            opacity: entryType.toString() == 'LetterEntries' ? 0.50 : 1,
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black87,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Expanded(
                child: Center(
                  heightFactor: 10.00,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CupertinoButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                ContentsScreen.id,
                              );
                            },
                            child: Text(
                              'Open',
                              style: Theme.of(context).textTheme.button,
                            ),
                          ),
                        ],
                      ),
                    ],
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
//
// class SectionCoverScreenArguments {
//   final String thumbnail;
//   final Map<dynamic, Map<String, dynamic>> entries;
//   final Type entryType;
//   SectionCoverScreenArguments(this.entryType, this.entries, this.thumbnail);
// }
