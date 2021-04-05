import 'package:flutter/material.dart';
import 'package:my_personal_website/screen/blog/component/sidebar_container.dart';
import 'package:my_personal_website/utils/constants.dart';

class AboutPage extends StatelessWidget {
  static const String id = 'about';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: 1.7,
                      child: Image.asset('assets/images/ambuja.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HEADING 1',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text(
                        'HEADING 2',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      ),
                      SizedBox(height: kDefaultPadding),
                      Text(
                        'HEADING 3',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
