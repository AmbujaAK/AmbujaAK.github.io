import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/portfolio_provider.dart';
import 'package:my_personal_website/screen/blog/component/sidebar_container.dart';

class Filters extends StatefulWidget {
  final PortfolioProvider provider;
  Filters({
    Key key,
    this.provider,
  }) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Filters",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.provider.filterItems
            .map(
              (item) => ListTile(
                title: Text(item),
                leading: Radio(
                  activeColor: Colors.red,
                  value: item,
                  groupValue: widget.provider.getSelected,
                  onChanged: (String value) {
                    widget.provider.setSelectedIndex(value);
                  },
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
