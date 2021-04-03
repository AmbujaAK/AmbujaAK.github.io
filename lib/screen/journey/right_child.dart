import 'package:flutter/material.dart';

class RightChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 120),
      child: Container(color: Colors.greenAccent),
    );
  }
}
