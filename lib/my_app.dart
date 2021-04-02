import 'package:flutter/material.dart';
import 'package:my_personal_website/home/home_page.dart';
import 'package:my_personal_website/providers/blog_provider.dart';
import 'package:my_personal_website/routes/custom_routers.dart';
import 'package:my_personal_website/utils/Settings.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Settings(),
        ),
        ChangeNotifierProvider<BlogProvider>(
          create: (_) => BlogProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        onGenerateRoute: CustomRouters.generateRoute,
      ),
    );
  }
}
