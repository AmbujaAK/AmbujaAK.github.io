import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final double hPadding;
  final Widget child;
  BaseContainer({this.hPadding, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      color: Colors.grey,
      padding:
          EdgeInsets.symmetric(horizontal: hPadding == null ? 0 : hPadding),
      child: child,
    );
  }
}
