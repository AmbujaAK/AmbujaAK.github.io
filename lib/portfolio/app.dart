import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/portfolio/filter_button.dart';
import 'package:my_personal_website/portfolio/filter_button_panel.dart';
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
  List<String> filterNames = ['all', 'flutter', 'react', 'angular'];

  String _selected;

  @override
  void initState() {
    super.initState();
    _selected = 'all';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 104.0),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: filterNames
                  .map(
                    (btn) => FilterButton(
                      key: Key(btn),
                      filterName: btn,
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
            // FilterButtonPanel(filterName: filterNames, selected: _selected),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: getBody(context, _selected),
            ),
          ),
        ],
      ),
    );
  }
}

Widget getBody(BuildContext context, String selected) {
  if (kIsWeb) {
    return bodyForWeb(context, selected);
  } else if (Platform.isAndroid) {
    return bodyForAndroid(context);
  } else if (Platform.isIOS) {
    return bodyForAndroid(context);
  } else {
    return bodyForWeb(context, selected);
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
Widget bodyForWeb(BuildContext context, String selected) {
  final ProjectItemList projectItemList = ProjectItemList();

  List<Map<String, String>> filterProjectItemList =
      projectItemList.getFilteredProjectItemList(filter: selected);

  return GridView.builder(
    itemCount: filterProjectItemList.length,
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.all(4.0),
      child: ProjectItem(
        title: filterProjectItemList[index]['app'],
        // color: Colors.blueGrey[200],
        onTap: () async {
          var url = '$kBaseUrl/${filterProjectItemList[index]}';
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
