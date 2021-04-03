import 'package:flutter/material.dart';

class ProjectItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color color;

  ProjectItem({@required this.title, this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color == null ? Colors.transparent : color,
          borderRadius: BorderRadius.circular(2.0),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
