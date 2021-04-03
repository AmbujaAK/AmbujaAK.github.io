import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar_button.dart';
import 'package:my_personal_website/appbar/tabs.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:provider/provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    this.preferredSize,
    this.onPage,
    this.isButtonEnabled,
  });

  final Size preferredSize;
  final String onPage;
  final bool isButtonEnabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(32, 32, 32, 4),
      child: Consumer<NavigationProvider>(
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
            actions: getTabs.map((tab) {
              var page = tab['title'];
              var index = getTabs.indexOf(tab);
              return CustomAppBarButton(
                index: provider.getPageIndex,
                title: page,
                onTap: () {
                  provider.setPage(page);
                  provider.setPageIndex(index);
                  Navigator.of(context).pushReplacementNamed(page);
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
