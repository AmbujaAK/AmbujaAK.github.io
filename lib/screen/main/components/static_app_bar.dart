import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/utils/responsive.dart';
import 'package:provider/provider.dart';

import 'ambuja_ak_logo.dart';
import 'socal.dart';
import 'web_menu.dart';

class StaticAppBar extends StatelessWidget {
  const StaticAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          Consumer<NavigationProvider>(builder: (_, state, __) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                state.openOrCloseDrawer();
              },
            );
          }),
        AmbujaAkLogo(),
        Spacer(),
        if (Responsive.isDesktop(context)) WebMenu(),
        Spacer(),
        // Socal
        Socal(),
      ],
    );
  }
}
