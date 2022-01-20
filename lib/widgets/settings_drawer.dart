import 'package:fgc/constants.dart';
import 'package:fgc/app_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const fonts = ['Bitter', /*'Poppins',*/ 'Dosis', 'Caveat', 'Courgette', 'Playball'];

const boxRadiusLeft = BorderRadius.only(
  topLeft: Radius.circular(8.0),
  topRight: Radius.circular(0.0),
  bottomLeft: Radius.circular(8.0),
  bottomRight: Radius.circular(0.0),
);
const boxRadiusRight = BorderRadius.only(
  topLeft: Radius.circular(0.0),
  topRight: Radius.circular(8.0),
  bottomLeft: Radius.circular(0.0),
  bottomRight: Radius.circular(8.0),
);

class SettingsDrawer extends StatefulWidget {
  const SettingsDrawer({Key? key}) : super(key: key);

  @override
  _SettingsDrawerState createState() => _SettingsDrawerState();
}

class _SettingsDrawerState extends State<SettingsDrawer> {
  double _fontSize = 18;
  String _fontFamily = 'Caveat';

  @override
  void initState() {
    super.initState();
    _fontSize = context.read<AppState>().fontSize;
    _fontFamily = context.read<AppState>().fontFamily;
  }

  @override
  Widget build(BuildContext context) {
    final _optionTitleTextStyle = TextStyle(fontSize: 18, fontFamily: 'Dosis');

    return Drawer(
      child: Container(
        decoration: context.watch<AppState>().backgroundDecoration,
        child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                // Drawer Header Row
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black45,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      Expanded(
                        child: Text(
                          'Options',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Dosis',
                            fontSize: context.watch<AppState>().fontSize * 1.25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Theme Setting Row
                SettingsRow(
                  title: Text(
                    'THEME',
                    style: _optionTitleTextStyle,
                  ),
                  widget: CupertinoSlidingSegmentedControl(
                    children: {
                      false: Container(
                        decoration: BoxDecoration(
                          borderRadius: boxRadiusLeft,
                          image: context.watch<AppState>().paperTexture
                              ? DecorationImage(
                                  colorFilter: ColorFilter.mode(kLightColor, BlendMode.color),
                                  image: AssetImage("assets/display_images/paper.jpg"),
                                  fit: BoxFit.cover,
                                )
                              : null,
                          color: !context.watch<AppState>().paperTexture ? kLightColor : null,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Light',
                            style: TextStyle(
                              // overflow: TextOverflow.clip,
                              fontSize: _fontSize,
                              fontFamily: _fontFamily,
                            ),
                          ),
                        ),
                      ),
                      true: Container(
                        decoration: BoxDecoration(
                          borderRadius: boxRadiusRight,
                          image: context.watch<AppState>().paperTexture
                              ? DecorationImage(
                                  colorFilter:
                                      ColorFilter.mode(Color(0x6A2C2C35), BlendMode.hardLight),
                                  image: AssetImage("assets/display_images/paper.jpg"),
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
                              // overflow: TextOverflow.clip,
                              fontSize: _fontSize,
                              fontFamily: _fontFamily,
                            ),
                          ),
                        ),
                      ),
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
                // Texture Setting Row
                SettingsRow(
                  title: Text(
                    'TEXTURE',
                    style: _optionTitleTextStyle,
                  ),
                  widget: CupertinoSlidingSegmentedControl(
                    children: {
                      true: Container(
                        decoration: BoxDecoration(
                          borderRadius: boxRadiusLeft,
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                              context.watch<AppState>().darkTheme ? kDarkBackground : kLightColor,
                              context.watch<AppState>().darkTheme
                                  ? BlendMode.hardLight
                                  : BlendMode.color,
                            ),
                            image: AssetImage("assets/display_images/paper.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Paper',
                            style: TextStyle(
                              fontSize: _fontSize,
                              fontFamily: _fontFamily,
                            ),
                          ),
                        ),
                      ),
                      false: Container(
                        decoration: BoxDecoration(
                          borderRadius: boxRadiusRight,
                          color:
                              context.watch<AppState>().darkTheme ? Color(0xff7c7777) : kLightColor,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            'Flat',
                            style: TextStyle(
                              fontSize: _fontSize,
                              fontFamily: _fontFamily,
                            ),
                          ),
                        ),
                      )
                    },
                    onValueChanged: (bool? value) {
                      print(value);
                      if (value == null) {
                        return;
                      }
                      context.read<AppState>().updatePaperTexture(value);
                    },
                  ),
                ),
                // Font Family Setting Row
                SettingsRow(
                  title: Text(
                    'FONT',
                    style: _optionTitleTextStyle,
                  ),
                  widget: CupertinoPicker(
                      useMagnifier: true,
                      scrollController: FixedExtentScrollController(
                        initialItem: fonts.indexOf(context.read<AppState>().fontFamily),
                      ),
                      itemExtent: 40.0,
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
                                style: TextStyle(fontFamily: font),
                              ),
                            ),
                          )
                          .toList()),
                ),
                // Font Size Setting Row
                SettingsRow(
                  title: Text(
                    'FONT SIZE',
                    style: _optionTitleTextStyle,
                  ),
                  widget: Slider(
                    activeColor: context.read<AppState>().darkTheme ? kLightColor : kDarkColor,
                    inactiveColor: context.read<AppState>().darkTheme ? kLightFaded : kDarkFaded,
                    onChanged: (val) {
                      context.read<AppState>().updateFontSize(val.roundToDouble());
                    },
                    label: context.watch<AppState>().fontSize.round().toString(),
                    value: context.read<AppState>().fontSize,
                    divisions: 5,
                    min: 16.0,
                    max: 32.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: title,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Flexible(
                flex: 4,
                child: SizedBox(height: 70, child: Center(child: widget)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
