import 'package:flutter/material.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';

import 'static_app_bar.dart';

class Header extends StatelessWidget {
  final String pageTitle;
  final String pageDescrption;
  final VoidCallback press;
  final bool needHeader;

  Header({
    Key key,
    this.pageTitle,
    this.pageDescrption,
    this.press,
    this.needHeader,
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
                  SizedBox(height: kDefaultPadding * 2),
                  needHeader
                      ? Column(
                          children: [
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
                            FittedBox(
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "Learn More",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: kDefaultPadding / 2),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
