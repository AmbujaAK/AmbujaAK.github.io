import 'package:flutter/material.dart';
import 'package:my_personal_website/shared/appbar/custom_app_bar.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/screen/home/home_body.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
        onPage: Provider.of<NavigationProvider>(context, listen: false).getPage,
      ),
      body: HomeBody(),
    );
  }
}
