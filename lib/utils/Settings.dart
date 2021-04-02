import 'package:flutter/material.dart';

class Settings with ChangeNotifier {
  String _onPage = 'home';
  String get getPage => _onPage;

  void setPage(String onPage) {
    this._onPage = onPage;
    notifyListeners();
  }
}
