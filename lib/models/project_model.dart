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
    title: "test_app",
    description: "Test App",
    type: 'flutter',
  ),
  ProjectModel(
    date: "23 September 2020",
    image: "assets/images/0.png",
    title: "flutter_whatsapp_clone",
    description: "hello project",
    type: 'flutter',
  ),
  ProjectModel(
    date: "21 August  2020",
    image: "assets/images/1.png",
    title: "todo-with-react",
    description: "hello buddy",
    type: 'react',
  ),
  ProjectModel(
    date: "23 September 2020",
    image: "assets/images/2.png",
    title: "weather-app",
    description: "hello project",
    type: 'react',
  ),
];
