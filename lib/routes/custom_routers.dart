import 'package:flutter/material.dart';
import 'package:my_personal_website/screen/about/about_page.dart';
import 'package:my_personal_website/screen/blog/blog_page.dart';
import 'package:my_personal_website/screen/contact/contact_page.dart';
import 'package:my_personal_website/screen/home/home_page.dart';
import 'package:my_personal_website/screen/journey/journey_page.dart';
import 'package:my_personal_website/screen/portfolio/portfolio_page.dart';

class CustomRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'home':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'about':
        return MaterialPageRoute(builder: (_) => AboutPage());
      case 'portfolio':
        return MaterialPageRoute(builder: (_) => PortfolioPage());
      case 'journey':
        return MaterialPageRoute(builder: (_) => JourneyPage());
      case 'blog':
        return MaterialPageRoute(builder: (_) => BlogPage());
      case 'contact':
        return MaterialPageRoute(builder: (_) => ContactPage());
      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
