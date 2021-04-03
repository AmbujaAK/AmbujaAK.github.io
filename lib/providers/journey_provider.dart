import 'package:flutter/cupertino.dart';

class JourneyProvider with ChangeNotifier {
  bool _isExpanded = false;
  int _activeYearTag;

  bool get isExpanded => _isExpanded;
  int get getActiveYearTag => _activeYearTag;

  void toggleExpansion() {
    this._isExpanded = !_isExpanded;
    notifyListeners();
  }

  void setActiveYearTag(int yearTag) {
    this._activeYearTag = yearTag;
    notifyListeners();
  }
}
