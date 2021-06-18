import 'package:flutter/material.dart';
import 'package:my_personal_website/config/app_config.dart';
import 'package:my_personal_website/services/url_launcher.dart';
import 'package:my_personal_website/shared/buttons/custom_button.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';

class HomeIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.getMinDimen(context),
      padding: EdgeInsets.all(kDefaultPadding),
      // color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'HELLO',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'I AM AMBUJ KUMAR',
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'FULL STACK DEVELOPER',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (!Responsive.isMobile(context))
                SizedBox(width: kDefaultPadding),
              GestureDetector(
                onTap: () async {
                  var url = kHireMe;
                  UrlLauncher.launchInBrowser(url);
                },
                child: CustomButton(
                  title: 'HIRE ME',
                ),
              ),
              GestureDetector(
                onTap: () async {
                  var url = kResumeUrl;
                  UrlLauncher.launchInBrowser(url);
                },
                child: CustomButton(
                  title: 'GET CV',
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
