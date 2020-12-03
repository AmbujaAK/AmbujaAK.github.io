import 'package:flutter/material.dart';
import 'package:my_personal_website/my_app.dart';
import 'package:my_personal_website/utils/Settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Settings(),
      )
    ],
    child: MyApp(),
  ));
}
