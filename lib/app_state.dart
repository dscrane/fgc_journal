import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppState with ChangeNotifier, DiagnosticableTreeMixin {
  double _fontSize = 18;
  String _fontFamily = 'Caveat';
  bool _paperTexture = true;
  bool _darkTheme = true;
  late TextStyle _displayTextStyle;

  double get fontSize => _fontSize;
  String get fontFamily => _fontFamily;
  bool get paperTexture => _paperTexture;
  bool get darkTheme => _darkTheme;
  TextStyle? get displayTextStyle => _displayTextStyle;

  set fontSize(val) => _fontSize = val;
  set fontFamily(val) => _fontFamily = val;
  set paperTexture(val) => _paperTexture = val;
  set darkTheme(val) => _darkTheme = val;

  void updateDisplayTextTheme() {
    _displayTextStyle = GoogleFonts.getFont(_fontFamily,
        textStyle: TextStyle(
          fontSize: _fontSize,
          color: Colors.grey.shade800,
          fontWeight: _fontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
        ));
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
