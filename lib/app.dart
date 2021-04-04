import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/blog_provider.dart';
import 'package:my_personal_website/routes/custom_routers.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/screen/main/main_screen.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
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
        home: MainScreen(),
        onGenerateRoute: CustomRouters.generateRoute,
      ),
    );
  }
}
