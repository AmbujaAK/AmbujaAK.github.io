import 'package:flutter/cupertino.dart';
import 'package:my_personal_website/models/journey_model.dart';

class JourneyProvider with ChangeNotifier {
  bool _isExpanded = false;
  int _activeYearTag;
  List<JourneyModel> _journeyData = [
    JourneyModel(
      year: 2021,
      companyTag: "Ericsson",
      title: "Full Stack Developer at Ericsson",
      description: "working for project ISF for Mobile",
      galary: [],
      personalProject: ['ambuja.me'],
      skills: ['flutter'],
    ),
    JourneyModel(
      year: 2020,
      companyTag: "Ericsson",
      title: "Software Engineer at Ericsson",
      description: "working for project ISF for Web",
      galary: [],
      personalProject: ['ambuja.me'],
      skills: ['java', 'spring-mvc'],
    ),
    JourneyModel(
      year: 2019,
      companyTag: "Ericsson",
      title: "Associate Enginner at Ericsson",
      description: "working for project ISF",
      galary: [],
      personalProject: ['ambuja.me'],
      skills: ['flutter', 'java', 'spring-mvc'],
    ),
  ];

  bool get isExpanded => _isExpanded;
  int get getActiveYearTag => _activeYearTag;
  List<JourneyModel> get getJourneyData => _journeyData;

  final List<int> _years = [2022, 2021, 2020, 2019];

  List<int> get years => _years;

  void toggleExpansion(int tag, int index) {
    if (_years[index] == tag) {
      this._isExpanded = !_isExpanded;
      notifyListeners();
    }
  }

  void setActiveYearTag(int yearTag) {
    this._activeYearTag = yearTag;
    notifyListeners();
  }
}
