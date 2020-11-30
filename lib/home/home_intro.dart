import 'package:flutter/material.dart';
import 'package:my_personal_website/components/custom_button.dart';

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
                // Container(
                //   child: Text(
                //     'AMBUJAAK',
                //     style: TextStyle(
                //       fontSize: 80,
                //       fontWeight: FontWeight.w900,
                //       color: Colors.grey,
                //     ),
                //   ),
                // ),
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
                  CustomButton(
                    title: 'GET CV',
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
