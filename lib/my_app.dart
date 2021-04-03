import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/blog_provider.dart';
import 'package:my_personal_website/routes/custom_routers.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/screen/home/home_page.dart';
import 'package:my_personal_website/screen/journey/journey_page.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NavigationProvider(),
        ),
        ChangeNotifierProvider<BlogProvider>(
          create: (_) => BlogProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: JourneyPage(),
        onGenerateRoute: CustomRouters.generateRoute,
      ),
    );
  }
}
