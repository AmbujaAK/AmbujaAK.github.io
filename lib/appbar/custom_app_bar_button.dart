import 'package:flutter/material.dart';

class CustomAppBarButton extends StatefulWidget {
  final Key key;
  final String title;
  final bool isButtonEnabled;
  final Function onTap;

  CustomAppBarButton({
    this.key,
    this.title,
    this.isButtonEnabled,
    this.onTap,
  });

  @override
  _CustomAppBarButtonState createState() => _CustomAppBarButtonState();
}

class _CustomAppBarButtonState extends State<CustomAppBarButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      key: widget.key,
      hoverColor: Colors.greenAccent,
      disabledColor: Colors.blueGrey,
      disabledTextColor: Colors.white,
      color: widget.isButtonEnabled ? Colors.redAccent : Colors.transparent,
      child: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      onPressed: widget.onTap,
    );
  }
}
