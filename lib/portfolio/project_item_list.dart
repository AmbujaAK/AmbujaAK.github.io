class ProjectItemList {
  final List<Map<String, Object>> _listItems = [
    {'app': 'test_app', 'type': 'flutter'},
    {'app': 'flutter_whatsapp_clone', 'type': 'flutter'},
    {'app': 'todo-with-react', 'type': 'react'},
    {'app': 'weather-app', 'type': 'react'},
    {'app': 'flutter_fruit_slice', 'type': 'flutter'}
  ];

  List<Map<String, Object>> get getProjectItemList => _listItems;
}
