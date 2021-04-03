import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/journey_provider.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'left_child.dart';
import 'right_child.dart';

class JourneyHeader extends StatelessWidget {
  final bool isExpanded;
  final int yearTag;
  final VoidCallback onClick;

  JourneyHeader({
    this.isExpanded = false,
    this.yearTag,
    this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      startChild: LeftChild(
        year: yearTag,
      ),
      indicatorStyle: IndicatorStyle(
        height: 25,
        width: 25,
        indicator: InkWell(
          onTap: onClick,
          child: CircleAvatar(
            radius: 20,
            child: Center(
                child: Consumer<JourneyProvider>(
              builder: (_, pro, __) => Icon(
                pro.isExpanded && pro.getActiveYearTag == yearTag
                    ? Icons.remove_circle_outline_sharp
                    : Icons.add_circle_outline_sharp,
              ),
            )),
          ),
        ),
      ),
      endChild: RightChild(),
    );
  }
}
