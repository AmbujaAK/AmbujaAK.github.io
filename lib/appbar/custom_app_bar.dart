import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/navigation_bar_button.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({this.preferredSize});

  final Size preferredSize;
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('AmbujaAK',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        actions: [
          NavigationBarButton(
            title: 'Home',
            isActive: false,
            onTap: () {},
          ),
          NavigationBarButton(
            title: 'About',
            isActive: false,
            onTap: () {},
          ),
          NavigationBarButton(
            title: 'Services',
            isActive: true,
            onTap: () {},
          ),
          NavigationBarButton(
            title: 'Portfolio',
            isActive: true,
            onTap: () {},
          ),
          NavigationBarButton(
            title: 'Blog',
            isActive: true,
            onTap: () {},
          ),
          NavigationBarButton(
            title: 'Contact',
            isActive: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
