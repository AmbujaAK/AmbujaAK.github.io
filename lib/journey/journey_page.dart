import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';
import 'package:my_personal_website/journey/left_child.dart';
import 'package:my_personal_website/journey/right_child.dart';
import 'package:timeline_tile/timeline_tile.dart';

class JourneyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(
                year: 2021,
              ),
              indicatorStyle: IndicatorStyle(
                height: 25,
                width: 25,
                indicator: CircleAvatar(
                  radius: 20,
                  child: Center(child: Icon(Icons.remove_circle_outline_sharp)),
                ),
              ),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(
                year: 2020,
              ),
              indicatorStyle: IndicatorStyle(
                height: 25,
                width: 25,
                indicator: CircleAvatar(
                  radius: 20,
                  child: Center(child: Icon(Icons.add_circle_outline_sharp)),
                ),
              ),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(),
              endChild: RightChild(),
            ),
            TimelineTile(
              isLast: true,
              alignment: TimelineAlign.manual,
              lineXY: 0.2,
              startChild: LeftChild(
                year: 2019,
              ),
              indicatorStyle: IndicatorStyle(
                height: 25,
                width: 25,
                indicator: CircleAvatar(
                  radius: 20,
                  child: Center(child: Icon(Icons.add)),
                ),
              ),
              endChild: RightChild(),
            ),
          ],
        ),
      ),
    );
  }
}
