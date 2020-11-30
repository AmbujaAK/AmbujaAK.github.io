import 'package:flutter/material.dart';

class NavigationBarButton extends StatefulWidget {
  final String title;
  final bool isActive;
  final Function onTap;

  NavigationBarButton({
    this.title,
    this.isActive,
    this.onTap,
  });

  @override
  _NavigationBarButtonState createState() => _NavigationBarButtonState();
}

class _NavigationBarButtonState extends State<NavigationBarButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      hoverColor: Colors.greenAccent,
      disabledColor: Colors.grey,
      child: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: widget.onTap,
    );
  }
}
