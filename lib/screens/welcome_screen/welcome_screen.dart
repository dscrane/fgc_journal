import 'package:fgc/screens/table_of_contents_screen/table_of_contents_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Color(0xFF465A39), BlendMode.color),
                image: AssetImage("assets/images/canvas.jpg"),
                fit: BoxFit.cover,
              ),
            ),
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
                            fontSize: 12,
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
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, TableOfContentsScreen.id);
                        },
                        child: Text(
                          'Open',
                          style: TextStyle(
                            fontFamily: 'Dosis',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text('U.S. GOVERNMENT PRINTING OFFICE'),
                    Text('PROPERTY NO. 50185'),
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
