import 'package:flutter/material.dart';
import 'package:my_personal_website/components/custom_button.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Stack(
              children: [
                Container(
                  child: Text(
                    'I AM AMBUJ KUMAR',
                    style: TextStyle(
                      fontSize: 54,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomButton(
                    title: 'HIRE ME',
                  ),
                  GestureDetector(
                    onTap: () async {
                      var url = kResumeUrl;
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: CustomButton(
                      title: 'GET CV',
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
