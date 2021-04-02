import 'package:flutter/material.dart';

class BlogItemHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('First Blog Item'),
            trailing: Icon(
              Icons.delete,
              color: Colors.redAccent,
            ),
          ),
        )
      ],
    );
  }
}
