import 'package:flutter/material.dart';
import 'package:my_personal_website/screen/blog/component/sidebar_container.dart';
import 'package:my_personal_website/utils/constants.dart';

import 'filter_button.dart';

class Filters extends StatefulWidget {
  Filters({
    Key key,
  }) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  List<String> filterNames = ['all', 'flutter', 'react', 'angular'];
  String _selected;

  @override
  void initState() {
    super.initState();
    _selected = 'all';
  }

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Filters",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: filterNames
            .map(
              (btn) => FilterButton(
                key: Key(btn),
                title: btn,
                isActive: _selected == btn ? true : false,
                onPressed: () {
                  setState(() {
                    switch (btn) {
                      case 'flutter':
                        setState(() {
                          _selected = 'flutter';
                        });
                        break;
                      case 'react':
                        setState(() {
                          _selected = 'react';
                        });
                        break;
                      case 'angular':
                        setState(() {
                          _selected = 'angular';
                        });
                        break;
                      default:
                        setState(() {
                          _selected = 'all';
                        });
                    }
                    print('selected filter : $_selected');
                  });
                },
              ),
            )
            .toList(),
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  const Category({
    Key key,
    @required this.title,
    @required this.numOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
