import 'package:flutter/material.dart';
import 'package:my_personal_website/shared/appbar/tabs.dart';

class CustomAppBarButton extends StatefulWidget {
  final Key key;
  final String title;
  final VoidCallback onTap;
  final int index;

  CustomAppBarButton({
    this.key,
    this.title,
    this.onTap,
    this.index,
  });

  @override
  _CustomAppBarButtonState createState() => _CustomAppBarButtonState();
}

class _CustomAppBarButtonState extends State<CustomAppBarButton> {
  bool isButtonEnabled = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        // MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.red;
      }
      if (states.contains(MaterialState.hovered)) {
        return Colors.redAccent;
      }
      return Colors.black;
    }

    Color getEnabledColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.redAccent;
      }

      return Colors.pinkAccent;
    }

    isButtonEnabled = getTabs[widget.index]['title'] == widget.title;
    return Padding(
      padding: EdgeInsets.only(left: 8),
      child: TextButton(
        key: widget.key,
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 28, vertical: 8)),
            foregroundColor: MaterialStateProperty.resolveWith(getColor),
            backgroundColor: isButtonEnabled
                ? MaterialStateProperty.resolveWith(getEnabledColor)
                : null),
        child: Text(
          widget.title,
          style: TextStyle(
            color: isButtonEnabled ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        onPressed: widget.onTap,
      ),
    );
  }
}
