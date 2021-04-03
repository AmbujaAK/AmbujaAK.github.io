import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  String _onPage = 'home';
  bool _isEnabled = true;
  int _pageIndex = 0;

  String get getPage => _onPage;
  bool get isEnabled => _isEnabled;
  int get getPageIndex => _pageIndex;

  void setPage(String onPage) {
    this._onPage = onPage;
    notifyListeners();
  }

  void setEnabled(bool value) {
    this._isEnabled = value;
    notifyListeners();
  }

  void setPageIndex(int index) {
    this._pageIndex = index;
    notifyListeners();
  }
}
