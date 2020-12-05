import 'package:flutter/material.dart';

class AboutAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: 500.0,
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.contain,
                image: new AssetImage('assets/images/home-right.png')),
          ),
        ),
      ),
    );
  }
}
