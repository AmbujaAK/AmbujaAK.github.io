import 'package:flutter/material.dart';
import 'package:my_personal_website/portfolio/filter_button.dart';

enum ProjectType { all, flutter, react, angular }

class FilterButtonPanel extends StatefulWidget {
  final List<String> filterName;
  final String selected;

  const FilterButtonPanel({
    Key key,
    this.filterName,
    this.selected,
  }) : super(key: key);

  @override
  _FilterButtonPanelState createState() => _FilterButtonPanelState();
}

class _FilterButtonPanelState extends State<FilterButtonPanel> {
  String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.selected;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: widget.filterName
          .map(
            (btn) => FilterButton(
              key: Key(btn),
              filterName: btn,
              isActive: _selected == btn ? true : false,
              onPressed: () {
                setState(() {
                  switch (btn) {
                    case 'flutter':
                      setState(() {
                        _selected = 'flutter';
                      });
                      break;
                    case 'react':
                      setState(() {
                        _selected = 'react';
                      });
                      break;
                    case 'angular':
                      setState(() {
                        _selected = 'angular';
                      });
                      break;
                    default:
                      setState(() {
                        _selected = 'all';
                      });
                  }
                  print('selected filter : $_selected');
                });
              },
            ),
          )
          .toList(),
    );
  }
}
