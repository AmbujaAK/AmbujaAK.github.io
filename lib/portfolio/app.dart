import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/portfolio/project_item.dart';
import 'package:my_personal_website/portfolio/project_item_list.dart';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:my_personal_website/utils/constants.dart';
import 'dart:io' show Platform;

import 'package:url_launcher/url_launcher.dart';

class PortfolioPage extends StatefulWidget {
  static const String id = 'portfolio';

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  String activeType;
  bool isActive;

  @override
  void initState() {
    super.initState();

    activeType = 'all';
    isActive = true;
  }

  void _changeType(String type) {
    switch (type) {
      case 'flutter':
        setState(() {
          isActive = true;
          activeType = 'flutter';
        });
        break;
      case 'react':
        setState(() {
          isActive = true;
          activeType = 'react';
        });
        break;
      case 'angular':
        setState(() {
          isActive = true;
          activeType = 'angular';
        });
        break;
      default:
        setState(() {
          isActive = true;
          activeType = 'all';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  color: isActive ? Colors.amberAccent : Colors.amber[100],
                  onPressed: () => Text('A'),
                  child: Text('All'),
                ),
                RaisedButton(
                  color: isActive ? Colors.amberAccent : Colors.amber[100],
                  onPressed: () => Text('A'),
                  child: Text('Flutter'),
                ),
                RaisedButton(
                  color: isActive ? Colors.amberAccent : Colors.amber[100],
                  onPressed: () => Text('A'),
                  child: Text('React'),
                ),
                RaisedButton(
                  color: isActive ? Colors.amberAccent : Colors.amber[100],
                  onPressed: () => Text('A'),
                  child: Text('Angular'),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: getBody(context),
          )),
        ],
      ),
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
      title: projectItemList.getProjectItemList[index]['app'],
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
    itemBuilder: (context, index) => ProjectItem(
      title: projectItemList.getProjectItemList[index]['app'],
      color: Colors.blueGrey[200],
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
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
  );
}
