import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String title;
  CustomButton({this.title});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            widget.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.purple,
              spreadRadius: 2,
              blurRadius: 80,
              offset: Offset(2, 4),
            ),
          ],
        ),
      ),
    );
  }
}
