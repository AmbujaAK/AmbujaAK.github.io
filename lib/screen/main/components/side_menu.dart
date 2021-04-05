import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/shared/appbar/tabs.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:provider/provider.dart';

import 'ambuja_ak_logo.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kDarkBlackColor,
        child: Consumer<NavigationProvider>(builder: (_, state, __) {
          return ListView(
            children: [
              DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 2,
                  ),
                  child: AmbujaAkLogo(),
                ),
              ),
              ...List.generate(
                state.getMenuItems.length,
                (index) => DrawerItem(
                  isActive: index == state.getPageIndex,
                  title: state.getMenuItems[index]['page'],
                  press: () {
                    state.setMenuIndex(index);
                  },
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback press;

  const DrawerItem({
    Key key,
    @required this.title,
    @required this.isActive,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        selected: isActive,
        selectedTileColor: kPrimaryColor,
        onTap: press,
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
