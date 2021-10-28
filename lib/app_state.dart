import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class AppState with ChangeNotifier, DiagnosticableTreeMixin {
  double _fontSize = 18;
  String _fontFamily = 'Caveat';
  bool _paperTexture = true;
  bool _darkTheme = true;

  double get fontSize => _fontSize;
  String get fontFamily => _fontFamily;
  bool get paperTexture => _paperTexture;
  bool get darkTheme => _darkTheme;
  TextStyle get displayTextStyle => createDisplayTextTheme();
  TextStyle get entryTextStyle => createEntryTextStyle();
  TextStyle get entryTitleTextStyle => createEntryTitleTextStyle();
  TextStyle get indexEntryTitleTextStyle => createIndexEntryTitleTextStyle();
  TextStyle get indexEntryDateTextStyle => createIndexEntryDateTextStyle();

  BoxDecoration? get backgroundDecoration => createDecorationImage();

  set fontSize(val) => _fontSize = val;
  set fontFamily(val) => _fontFamily = val;
  set paperTexture(val) => _paperTexture = val;
  set darkTheme(val) => _darkTheme = val;

  TextStyle createDisplayTextTheme() {
    return GoogleFonts.getFont(_fontFamily,
        textStyle: TextStyle(
          fontSize: _fontSize,
          color: Colors.grey.shade800,
          fontWeight: _fontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
        ));
  }

  TextStyle createEntryTitleTextStyle() {
    return GoogleFonts.getFont(
      _fontFamily,
      textStyle: TextStyle(
        fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
        fontSize: fontSize * 1.25,
        color: Colors.grey.shade900,
      ),
    );
  }

  TextStyle createEntryTextStyle() {
    return GoogleFonts.getFont(
      _fontFamily,
      textStyle: TextStyle(
        fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
        height: 1.15,
        fontSize: _fontSize,
        color: Colors.grey.shade800,
      ),
    );
  }

  TextStyle createIndexEntryDateTextStyle() {
    return GoogleFonts.getFont(
      _fontFamily,
      color: Colors.grey.shade900,
      fontSize: _fontSize * (_fontSize > 24 ? .70 : .85),
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
    );
  }

  TextStyle createIndexEntryTitleTextStyle() {
    return GoogleFonts.getFont(
      _fontFamily,
      color: Colors.grey.shade900,
      fontSize: _fontSize,
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
    );
  }

  BoxDecoration createDecorationImage() {
    return BoxDecoration(
      image: _paperTexture
          ? DecorationImage(
              colorFilter: _darkTheme
                  ? ColorFilter.mode(kDarkBackground, BlendMode.hardLight)
                  : ColorFilter.mode(kLightColor, BlendMode.color),
              image: AssetImage("assets/images/paper.jpg"),
              fit: BoxFit.cover,
            )
          : null,
      color: _darkTheme ? kDarkColor : kLightColor,
    );
  }

  void updateFontSize(fontSize) {
    this.fontSize = fontSize;
    notifyListeners();
  }

  void updateFontFamily(fontFamily) {
    this.fontFamily = fontFamily;
    notifyListeners();
  }

  void updatePaperTexture(paperTexture) {
    this.paperTexture = paperTexture;
    notifyListeners();
  }

  void updateTheme(darkTheme) {
    this.darkTheme = darkTheme;
    notifyListeners();
  }
}
