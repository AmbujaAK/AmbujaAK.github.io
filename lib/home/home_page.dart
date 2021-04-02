import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/home/home_body.dart';
import 'package:my_personal_website/utils/Settings.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
        onPage: Provider.of<Settings>(context, listen: false).getPage,
      ),
      body: HomeBody(),
    );
  }
}