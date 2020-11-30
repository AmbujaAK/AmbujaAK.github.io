import 'package:flutter/material.dart';
import 'package:my_personal_website/home/home_page.dart';
import 'package:my_personal_website/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: kRoutes,
    );
  }
}
