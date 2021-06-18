import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';
import 'package:provider/provider.dart';

import 'static_app_bar.dart';

class Header extends StatelessWidget implements PreferredSizeWidget {
  final String pageTitle;
  final String pageDescrption;
  final VoidCallback press;
  final bool header;
  final bool hasMore;

  Header({
    Key key,
    this.pageTitle,
    this.pageDescrption,
    this.press,
    this.header,
    this.hasMore,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  StaticAppBar(),
                  header
                      ? Column(
                          children: [
                            SizedBox(height: kDefaultPadding * 2),
                            //! page title
                            Text(
                              pageTitle,
                              style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            //! page description
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: kDefaultPadding),
                              child: Text(
                                pageDescrption,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  height: 1.5,
                                ),
                              ),
                            ),

                            //! learn more [LINK]
                            hasMore
                                ? Consumer<NavigationProvider>(
                                    builder: (_, state, __) {
                                    return FittedBox(
                                      child: TextButton(
                                        onPressed: () {
                                          state.setMenuIndex(1);
                                        },
                                        child: Row(
                                          children: [
                                            Text(
                                              "Learn More",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                                width: kDefaultPadding / 2),
                                            Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                                : Container(),
                            if (Responsive.isDesktop(context))
                              SizedBox(height: kDefaultPadding),
                          ],
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
