import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:intl/intl.dart';
import 'package:my_personal_website/blog/blog_item.dart';
import 'package:my_personal_website/providers/blog_provider.dart';
import 'package:my_personal_website/shared/base_container.dart';
import 'package:provider/provider.dart';

class BlogPage extends StatelessWidget {
  static const String id = 'blog';

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(now);
    print(formatted);
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
      ),
      body: SingleChildScrollView(
        child: Consumer<BlogProvider>(
          builder: (context, provider, child) {
            return BaseContainer(
              hPadding: 100,
              child: ListView.builder(
                itemCount: provider.getBlogItems.length,
                itemBuilder: (context, index) {
                  return provider.getBlogItems[index];
                },
              ),
            );
          },
        ),
      ),
      floatingActionButton: Consumer<BlogProvider>(
        builder: (context, pro, child) {
          return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              BlogItem item = new BlogItem();
              pro.addNewBlogItem(item);
            },
          );
        },
      ),
    );
  }
}
