import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar_button.dart';
import 'package:my_personal_website/utils/Settings.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    this.preferredSize,
    this.onPage,
    this.isButtonEnabled,
  });

  final Size preferredSize;
  final String onPage;
  final bool isButtonEnabled;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isButtonEnabled = false;
  int selectedButton = 0;

  @override
  void initState() {
    super.initState();
    _isButtonEnabled = false;
  }

  void _enableButton(String onPage) {
    print(onPage);
    Provider.of<Settings>(context, listen: false).setPage(onPage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 32, 32, 4),
      child: Consumer<Settings>(
        builder: (context, provider, child) {
          return AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'AmbujaAK',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            actions: [
              CustomAppBarButton(
                title: 'home',
                isButtonEnabled: _isButtonEnabled,
                onTap: () {
                  print('home clicked');
                  setState(() {
                    _enableButton('home');
                    if (widget.onPage == 'home') {
                      _isButtonEnabled = true;
                    }
                    Navigator.pushNamed(context, 'home');
                  });
                },
              ),
              CustomAppBarButton(
                title: 'about',
                isButtonEnabled: _isButtonEnabled,
                onTap: () {
                  print('about clicked');
                  setState(() {
                    if (widget.onPage == 'about') {
                      _isButtonEnabled = true;
                    }
                    Navigator.pushNamed(context, 'about');
                  });
                },
              ),
              CustomAppBarButton(
                title: 'portfolio',
                isButtonEnabled: _isButtonEnabled,
                onTap: () {
                  print('portfolio clicked');
                  setState(() {
                    if (widget.onPage == 'portfolio') {
                      _isButtonEnabled = true;
                    }
                    Navigator.pushNamed(context, 'portfolio');
                  });
                },
              ),
              CustomAppBarButton(
                title: 'blog',
                isButtonEnabled: _isButtonEnabled,
                onTap: () {
                  print('blog clicked');
                  setState(() {
                    if (widget.onPage == 'blog') {
                      _isButtonEnabled = true;
                    }
                    Navigator.pushNamed(context, 'blog');
                  });
                },
              ),
              CustomAppBarButton(
                title: 'contact',
                isButtonEnabled: _isButtonEnabled,
                onTap: () {
                  print('contact clicked');
                  setState(() {
                    if (widget.onPage == 'contact') {
                      _isButtonEnabled = true;
                    }
                    Navigator.pushNamed(context, 'contact');
                  });
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
