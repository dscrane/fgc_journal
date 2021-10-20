import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier, DiagnosticableTreeMixin {
  double _fontSize = 18;
  String _fontFamily = 'Courgette';
  bool _paperTexture = true;
  bool _darkTheme = true;

  double get fontSize => _fontSize;
  String get fontFamily => _fontFamily;
  bool get paperTexture => _paperTexture;
  bool get darkTheme => _darkTheme;

  set fontSize(val) => _fontSize = val;
  set fontFamily(val) => _fontFamily = val;
  set paperTexture(val) => _paperTexture = val;
  set darkTheme(val) => _darkTheme = val;

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
