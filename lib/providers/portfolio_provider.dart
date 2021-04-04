import 'package:flutter/cupertino.dart';
import 'package:my_personal_website/models/project_model.dart';

class PortfolioProvider with ChangeNotifier {
  String _selected = 'All';
  List<String> _filterItems = ['All', 'Flutter', 'React', 'Angular'];

  String get getSelected => _selected;
  List<String> get filterItems => _filterItems;

  void setSelectedIndex(String value) {
    this._selected = value;
    print(_selected);
    notifyListeners();
  }

  List<ProjectModel> filteredProjects(String filter) {
    if (filter == _filterItems[0]) return projects;
    return projects
        .where((element) => element.type.toLowerCase() == filter.toLowerCase())
        .toList();
  }
}
