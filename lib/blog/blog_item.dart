import 'package:flutter/material.dart';
import 'package:my_personal_website/blog/blog_model.dart';

class BlogItem extends StatefulWidget {
  @override
  _BlogItemState createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  List<BlogModel> items = [
    BlogModel(
      isExpanded: false,
      header: '1. Header',
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Container(
          height: 20,
          alignment: Alignment.centerLeft,
          child: Flexible(
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
        ),
      ),
    ),
    BlogModel(
      isExpanded: false,
      header: '2. Header',
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Radio(value: null, groupValue: null, onChanged: null)
          ],
        ),
      ),
    ),
    BlogModel(
      isExpanded: false,
      header: '2. Header',
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Radio(value: null, groupValue: null, onChanged: null)
          ],
        ),
      ),
    ),
    BlogModel(
      isExpanded: false,
      header: '2. Header',
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Radio(value: null, groupValue: null, onChanged: null)
          ],
        ),
      ),
    ),
    BlogModel(
      isExpanded: false,
      header: '2. Header',
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Radio(value: null, groupValue: null, onChanged: null)
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((BlogModel item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: ListTile(
                        title: Text(
                          item.header,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: item.body,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
