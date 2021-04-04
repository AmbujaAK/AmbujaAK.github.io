import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/portfolio_provider.dart';
import 'package:my_personal_website/screen/blog/component/search.dart';

import 'package:my_personal_website/screen/portfolio/project_item.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';
import 'package:provider/provider.dart';

import 'filters.dart';

class PortfolioPage extends StatefulWidget {
  static const String id = 'portfolio';

  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PortfolioProvider(),
      child: Consumer<PortfolioProvider>(
        builder: (_, state, __) => Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sidebar
                if (!Responsive.isMobile(context))
                  Expanded(
                    child: Column(
                      children: [
                        Search(),
                        SizedBox(height: kDefaultPadding),
                        Filters(provider: state),
                      ],
                    ),
                  ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: kDefaultPadding),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: List.generate(
                      state.filteredProjects(state.getSelected).length,
                      (index) => ProjectItemCard(
                          model:
                              state.filteredProjects(state.getSelected)[index]),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Widget bodyForAndroid(BuildContext context) {
//   final ProjectItemList projectItemList = ProjectItemList();

//   return ListView.builder(
//     itemCount: projectItemList.getProjectItemList.length,
//     itemBuilder: (context, index) => ProjectItemCard(
//       model: ProjectModel(),
//       title: projectItemList.getProjectItemList[index]['app'],
//       color: Colors.blueGrey[600],
//       onTap: () async {
//         var url =
//             '$kBaseUrl/${projectItemList.getProjectItemList[index]['app']}';
//         print(url);
//         if (await canLaunch(url)) {
//           await launch(url);
//         } else {
//           throw 'Could not launch $url';
//         }
//       },
//     ),
//   );
// }

// envoked on Web browser
// Widget bodyForWeb(BuildContext context, String selected) {
//   final ProjectItemList projectItemList = ProjectItemList();

//   List<Map<String, String>> filterProjectItemList =
//       projectItemList.getFilteredProjectItemList(filter: selected);

//   return GridView.builder(
//     itemCount: filterProjectItemList.length,
//     itemBuilder: (context, index) => Padding(
//       padding: const EdgeInsets.all(4.0),
//       child: ProjectItem(
//         title: filterProjectItemList[index]['app'],
//         // color: Colors.blueGrey[200],
//         onTap: () async {
//           var url = '$kBaseUrl/${filterProjectItemList[index]['app']}';
//           print(url);
//           if (await canLaunch(url)) {
//             await launch(url);
//           } else {
//             throw 'Could not launch $url';
//           }
//         },
//       ),
//     ),
//     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
//   );
// }
