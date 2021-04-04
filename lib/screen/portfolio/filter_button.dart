import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isActive;

  const FilterButton({
    Key key,
    this.title,
    this.onPressed,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(title),
      onPressed: onPressed,
      // color: isActive ? Colors.yellowAccent : Colors.transparent,
    );
  }
}
