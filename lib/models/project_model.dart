class ProjectModel {
  final String date, title, description, image, type, path, sourceCode;

  ProjectModel({
    this.date,
    this.title,
    this.description,
    this.image,
    this.type,
    this.path,
    this.sourceCode,
  });
}

List<ProjectModel> projects = [
  ProjectModel(
    date: "23 September 2020",
    image: "assets/images/0.png",
    title: "Test App",
    description:
        "This app is created for testing new things in flutter for learning purpose. This includes only basic implementation of any widgets",
    type: 'flutter',
    path: "test_app",
  ),
  ProjectModel(
    date: "23 September 2020",
    image: "assets/images/0.png",
    title: "WhatsApp Clone",
    description:
        "This Project is created to clone whatsapp web version for learning purpose.",
    type: 'flutter',
    path: "flutter_whatsapp_clone",
  ),
  ProjectModel(
    date: "21 August  2020",
    image: "assets/images/1.png",
    title: "Todo App with React",
    description: "This app is created while learning react",
    type: 'react',
    path: "todo-with-react",
  ),
  ProjectModel(
    date: "23 September 2020",
    image: "assets/images/2.png",
    title: "Weather App",
    description: "This app is created for integration of APIs in react",
    type: 'react',
    path: "weather-app",
  ),
];
