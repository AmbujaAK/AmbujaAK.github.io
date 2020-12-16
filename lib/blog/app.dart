import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/blog/blog_item.dart';

class Blog extends StatelessWidget {
  static const String id = 'blog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Month : 01-01-2020',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: BlogItem()),
          Text(
            'Month : 01-01-2020',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: BlogItem()),
          Text(
            'Month : 01-01-2020',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: BlogItem()),
          Text(
            'Month : 01-01-2020',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Flexible(child: BlogItem()),
        ],
      ),
    );
  }
}
