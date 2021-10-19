import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

const fonts = ['Dosis', 'Courgette', 'Poppins', 'Bitter', 'Playball', 'Caveat'];

class SettingsDrawer extends StatefulWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  _SettingsDrawerState createState() => _SettingsDrawerState();
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  var i = GoogleFonts;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      decoration: BoxDecoration(
        image: context.watch<AppState>().paperTexture
            ? DecorationImage(
                colorFilter: context.read<AppState>().darkTheme
                    ? ColorFilter.mode(Color(0x6A2C2C35), BlendMode.hardLight)
                    : ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
                image: AssetImage("assets/images/paper.jpg"),
                fit: BoxFit.cover,
              )
            : null,
        color: context.watch<AppState>().darkTheme ? Colors.grey.shade800 : Color(0xFFEFEFE0),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const Text('Settings'),
            ),
            SettingsRow(
              title: Text('Theme'),
              widget: CupertinoSlidingSegmentedControl(
                thumbColor: Colors.red,
                children: {
                  false: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(0.0),
                      ),
                      image: context.watch<AppState>().paperTexture
                          ? DecorationImage(
                              colorFilter: ColorFilter.mode(Color(0xFFEFEFE0), BlendMode.color),
                              image: AssetImage("assets/images/paper.jpg"),
                              fit: BoxFit.cover,
                            )
                          : null,
                      color: !context.watch<AppState>().paperTexture ? Color(0xFFEFEFE0) : null,
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'Light',
                        style: TextStyle(
                          color: !context.watch<AppState>().darkTheme
                              ? Colors.grey.shade800
                              : Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                  true: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      image: context.watch<AppState>().paperTexture
                          ? DecorationImage(
                              colorFilter: ColorFilter.mode(Color(0x6A2C2C35), BlendMode.hardLight),
                              image: AssetImage("assets/images/paper.jpg"),
                              fit: BoxFit.cover,
                            )
                          : null,
                      color: !context.watch<AppState>().paperTexture
                          ? context.watch<AppState>().darkTheme
                              ? Color(0xff7c7777)
                              : Color(0xff646262)
                          : null,
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'Dark',
                        style: TextStyle(
                          color: context.watch<AppState>().darkTheme
                              ? Colors.grey.shade800
                              : Colors.grey.shade600,
                        ),
                      ),
                    ),
                  )
                },
                onValueChanged: (bool? value) {
                  if (value == null) {
                    return;
                  }
                  print(value.runtimeType);

                  context.read<AppState>().updateTheme(value);
                },
              ),
            ),
            SettingsRow(
              title: Text('Texture'),
              widget: CupertinoSlidingSegmentedControl(
                children: {
                  true: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(0.0),
                      ),
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          context.watch<AppState>().darkTheme
                              ? Color(0x37303041)
                              : Color(0xFFEFEFE0),
                          context.watch<AppState>().darkTheme
                              ? BlendMode.hardLight
                              : BlendMode.color,
                        ),
                        image: AssetImage("assets/images/paper.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'Paper',
                        style: TextStyle(
                          color: context.watch<AppState>().paperTexture
                              ? Colors.grey.shade800
                              : Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),
                  false: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(8.0),
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      color: context.watch<AppState>().darkTheme
                          ? Color(0xff7c7777)
                          : Color(0xFFEFEFE0),
                    ),
                    padding: EdgeInsets.all(8),
                    child: Center(
                      child: Text(
                        'Flat',
                        style: TextStyle(
                          color: !context.watch<AppState>().paperTexture
                              ? Colors.grey.shade800
                              : Colors.grey.shade500,
                        ),
                      ),
                    ),
                  )
                },
                onValueChanged: (bool? value) {
                  if (value == null) {
                    return;
                  }
                  context.read<AppState>().updatePaperTexture(value);
                },
              ),
            ),
            SettingsRow(
              title: Text('Font'),
              widget: CupertinoPicker(
                  scrollController: FixedExtentScrollController(
                      initialItem: fonts.indexOf(context.read<AppState>().fontFamily)),
                  itemExtent: 30.0,
                  onSelectedItemChanged: (index) {
                    setState(() {
                      context.read<AppState>().updateFontFamily(fonts[index]);
                    });
                  },
                  children: fonts
                      .map<Widget>(
                        (font) => Center(
                          child: Text(
                            font,
                            style: GoogleFonts.getFont(font),
                          ),
                        ),
                      )
                      .toList()),
            ),
            SettingsRow(
              title: Text('Font Size'),
              widget: CupertinoSlider(
                onChanged: (val) {
                  setState(() {
                    context.read<AppState>().updateFontSize(val.roundToDouble());
                  });
                },
                value: context.watch<AppState>().fontSize,
                min: 8.0,
                max: 32.0,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class SettingsRow extends StatelessWidget {
  const SettingsRow({
    Key? key,
    required this.title,
    required this.widget,
  }) : super(key: key);

  final Widget title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: title,
            ),
          ),
          Flexible(
            flex: 4,
            child: Center(child: widget),
          ),
        ],
      ),
    );
  }
}
