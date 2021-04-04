import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isEnabled = true;
  int _menuIndex = 2;

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;
  bool get isEnabled => _isEnabled;
  int get getPageIndex => _menuIndex;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState.isDrawerOpen) {
      _scaffoldKey.currentState.openEndDrawer();
    } else {
      _scaffoldKey.currentState.openDrawer();
    }
  }

  void setEnabled(bool value) {
    this._isEnabled = value;
    notifyListeners();
  }

  void setMenuIndex(int index) {
    _menuIndex = index;
    print('selected index : $_menuIndex');
    notifyListeners();
  }
}
