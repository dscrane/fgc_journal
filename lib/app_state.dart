import 'package:fgc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppState with ChangeNotifier, DiagnosticableTreeMixin {
  static Map<String, dynamic> errorEntry = {
    'title': 'ERROR',
    'date': '',
    'entry': '''Please reload ''',
    'envelope': 'null',
    'letter': [],
    'enclosed': null,
  };

  // Data state values
  dynamic _currentEntryKey;
  late Map<String, dynamic> _currentEntry;
  late Type _entryType;
  late Map<dynamic, Map<String, dynamic>> _entries;
  // Stylistic state values
  double _fontSize = 18;
  String _fontFamily = 'Caveat';
  bool _paperTexture = true;
  bool _darkTheme = true;

  // Data state references
  dynamic get currentEntryKey => _currentEntryKey;
  Map<String, dynamic> get currentEntry => _currentEntry;
  Map<dynamic, Map<String, dynamic>> get entries => _entries;
  Type get entryType => _entryType;

  set currentEntryKey(val) => _currentEntryKey = val;
  set entryType(val) => _entryType = val;
  set entries(val) => _entries = val;
  set currentEntry(val) => _currentEntry = val;

  void updateCurrentEntryKey(entryKey) {
    this.currentEntryKey = entryKey;
    notifyListeners();
  }

  void updateEntries(entries) {
    this.entries = entries;
    notifyListeners();
  }

  void updateEntryType(entryType) {
    this.entryType = entryType;
    notifyListeners();
  }

  void updateCurrentEntry(currentEntry) {
    this.currentEntry = currentEntry;
    notifyListeners();
  }

  // Stylistic state references
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
    return TextStyle(
      fontFamily: _fontFamily,
      fontSize: _fontSize,
      color: Colors.grey.shade800,
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
    );
  }

  TextStyle createEntryTitleTextStyle() {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
      fontSize: fontSize * 1.25,
      color: Colors.grey.shade900,
    );
  }

  TextStyle createEntryTextStyle() {
    return TextStyle(
      fontFamily: _fontFamily,
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
      height: 1.15,
      fontSize: _fontSize,
      color: Colors.grey.shade800,
    );
  }

  TextStyle createIndexEntryDateTextStyle() {
    return TextStyle(
      fontFamily: _fontFamily,
      color: Colors.grey.shade900,
      fontSize: _fontSize * (_fontSize > 24 ? .70 : .85),
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w700 : FontWeight.w500,
    );
  }

  TextStyle createIndexEntryTitleTextStyle() {
    return TextStyle(
      fontFamily: _fontFamily,
      color: Colors.grey.shade900,
      fontSize: _fontSize,
      fontWeight: _fontFamily == 'Caveat' ? FontWeight.w600 : FontWeight.w500,
    );
  }

  BoxDecoration createDecorationImage() {
    return BoxDecoration(
      image: _paperTexture
          ? DecorationImage(
              image: _darkTheme
                  ? AssetImage("assets/display_images/paper_dark.jpg")
                  : AssetImage("assets/display_images/paper_white.jpg"),
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
