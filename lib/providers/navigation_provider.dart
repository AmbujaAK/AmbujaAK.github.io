import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Map<String, dynamic>> _menuItems = [
    {
      'page': 'Home',
      'pageTitle': 'Welcome to My Personal website',
      'pageDescription':
          'Stay updated with the newest design and development stories, case studies, \nand insights shared by AmbujaAK.',
      'header': true,
      'link': '0',
    },
    {
      'page': 'About',
      'pageTitle': '',
      'pageDescription': '',
      'header': false,
      'link': '',
    },
    {
      'page': 'Portfolio',
      'pageTitle': '',
      'pageDescription': '',
      'header': false,
      'link': '',
    },
    // {
    //   'page': 'Journey',
    //   'pageTitle': '',
    //   'pageDescription': '',
    //   'header': false,
    //   'link': '',
    // },
    {
      'page': 'Blog',
      'pageTitle': '',
      'pageDescription': '',
      'header': false,
      'link': '',
    },
    // {
    //   'page': 'Contact',
    //   'pageTitle': 'Contact Me',
    //   'pageDescription': 'NAME  |  CONTACT ME',
    //   'header': true,
    //   'link': '',
    // }
  ];

  bool _isEnabled = true;
  int _menuIndex = 0;

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldKey;
  bool get isEnabled => _isEnabled;
  int get getPageIndex => _menuIndex;
  List<Map<String, dynamic>> get getMenuItems => _menuItems;

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
