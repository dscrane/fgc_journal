import 'package:fgc/screens/table_of_contents_screen/table_of_contents_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Color(0xFF465A39), BlendMode.color),
            image: AssetImage("assets/images/canvas.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          'FGC',
                          style: TextStyle(
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
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
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'JR',
                          style: TextStyle(
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
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
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'CASH',
                      style: TextStyle(
                        fontFamily: 'Algerian',
                        fontSize: 64,
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CupertinoButton(
                      onPressed: () {
                        Navigator.pushNamed(context, TableOfContentsScreen.id);
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
                Column(
                  children: <Widget>[
                    Text(
                      'U.S. GOVERNMENT PRINTING OFFICE',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
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
                    Text(
                      'PROPERTY NO. 50185',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
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
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
