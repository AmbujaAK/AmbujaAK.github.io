class ProjectItemList {
  final List<Map<String, String>> _listItems = [
    {'app': 'test_app', 'type': 'flutter'},
    {'app': 'flutter_whatsapp_clone', 'type': 'flutter'},
    {'app': 'todo-with-react', 'type': 'react'},
    {'app': 'weather-app', 'type': 'react'},
    {'app': 'flutter_fruit_slice', 'type': 'flutter'},
  ];

  List<Map<String, String>> get getProjectItemList => _listItems;

  List<Map<String, String>> getFilteredProjectItemList({String filter}) {
    print('filter : $filter');
    List<Map<String, String>> result =
        _listItems.where((element) => element['type'] == filter).toList();

    if (filter != 'all')
      return result;
    else
      return _listItems;
  }
}
