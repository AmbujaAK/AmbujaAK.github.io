import 'package:flutter/material.dart';

class LeftChild extends StatelessWidget {
  final bool needImage;
  final Image image;
  final int year;

  LeftChild({this.needImage, this.image, this.year});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white54,
      child: Center(
        child: year != null
            ? CircleAvatar(
                radius: 32,
                child: Text(year.toString()),
              )
            : Container(),
      ),
    );
  }
}
