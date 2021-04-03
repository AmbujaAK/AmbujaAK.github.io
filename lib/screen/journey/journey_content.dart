import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'left_child.dart';
import 'right_child.dart';

class JourneyContent extends StatelessWidget {
  final int yearTag;
  JourneyContent({this.yearTag});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      startChild: LeftChild(),
      endChild: RightChild(),
    );
  }
}
