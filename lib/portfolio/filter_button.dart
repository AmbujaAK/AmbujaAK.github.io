import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String filterName;
  final Function onPressed;
  final bool isActive;

  const FilterButton({
    Key key,
    this.filterName,
    this.onPressed,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(filterName),
      onPressed: onPressed,
      color: isActive ? Colors.yellowAccent : Colors.transparent,
    );
  }
}
