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
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.black;
    }

    return TextButton(
      key: widget.key,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 28, vertical: 8)),
        foregroundColor: MaterialStateProperty.resolveWith(getColor),
        // backgroundColor: MaterialStateProperty.resolveWith(getColor),
      ),
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
