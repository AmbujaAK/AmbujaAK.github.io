import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _onPage = 'home';
  bool _isEnabled = true;
  int _pageIndex = 0;

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;
  String get getPage => _onPage;
  bool get isEnabled => _isEnabled;
  int get getPageIndex => _pageIndex;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

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

  void setMenuIndex(int index) {
    _pageIndex = index;
    print('selected index : $_pageIndex');
    notifyListeners();
  }
}
