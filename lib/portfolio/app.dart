import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/portfolio/project_item.dart';
import 'package:my_personal_website/portfolio/project_item_list.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:my_personal_website/utils/constants.dart';
import 'dart:io' show Platform;

import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatelessWidget {
  static const String id = 'portfolio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 104.0),
      ),
      body: getBody(context),
    );
  }
}

Widget getBody(BuildContext context) {
  if (kIsWeb) {
    return bodyForWeb(context);
  } else if (Platform.isAndroid) {
    return bodyForAndroid(context);
  } else if (Platform.isIOS) {
    return bodyForAndroid(context);
  } else {
    return bodyForWeb(context);
  }
}

Widget bodyForAndroid(BuildContext context) {
  final ProjectItemList projectItemList = ProjectItemList();

  return ListView.builder(
    itemCount: projectItemList.getProjectItemList.length,
    itemBuilder: (context, index) => ProjectItem(
      title: projectItemList.getProjectItemList[index],
      color: Colors.blueGrey[600],
      onTap: () async {
        var url = '$kBaseUrl/${projectItemList.getProjectItemList[index]}';
        print(url);
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  );
}

// envoked on Web browser
Widget bodyForWeb(BuildContext context) {
  final ProjectItemList projectItemList = ProjectItemList();

  return GridView.builder(
    itemCount: projectItemList.getProjectItemList.length,
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.all(4.0),
      child: ProjectItem(
        title: projectItemList.getProjectItemList[index],
        // color: Colors.blueGrey[200],
        onTap: () async {
          var url = '$kBaseUrl/${projectItemList.getProjectItemList[index]}';
          print(url);
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
      ),
    ),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
  );
}
