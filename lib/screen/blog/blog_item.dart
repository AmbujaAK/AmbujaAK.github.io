import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/blog_provider.dart';
import 'package:my_personal_website/screen/blog/blog_item_content.dart';
import 'package:my_personal_website/screen/blog/blog_item_header.dart';
import 'package:my_personal_website/styles.dart';
import 'package:provider/provider.dart';

class BlogItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BlogProvider>(
      builder: (context, provider, child) {
        return Card(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BlogItemHeader(),
                  provider.isExpanded ? BlogItemContent() : Container(),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 5,
                child: InkWell(
                  onTap: () {
                    if (provider.isExpanded) {
                      provider.setExpanded(false);
                    } else {
                      provider.setExpanded(true);
                    }
                  },
                  child: provider.isExpanded
                      ? Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Text('show less', style: kShowMoreLessStyle)
                          ],
                        )
                      : Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.purple,
                              size: 20,
                            ),
                            Text('show more', style: kShowMoreLessStyle),
                          ],
                        ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
