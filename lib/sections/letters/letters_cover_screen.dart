import 'package:fgc/screens/table_of_contents_screen.dart';
import 'package:fgc/sections/letters/letters.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LettersCoverScreen extends StatefulWidget {
  static const id = "letters_cover_screen";
  const LettersCoverScreen({Key? key}) : super(key: key);

  @override
  _LettersCoverScreenState createState() => _LettersCoverScreenState();
}

class _LettersCoverScreenState extends State<LettersCoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  // mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              TableOfContentsScreen.id,
                              arguments: TableOfContentsScreenArguments(
                                  LetterEntries, letterEntries),
                            );
                          },
                          child: Text(
                            'Open',
                            style: TextStyle(
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
