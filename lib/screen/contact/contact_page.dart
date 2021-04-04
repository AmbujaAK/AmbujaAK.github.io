import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  static const String id = 'contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              child: Center(
                child: Text(
                  'coming soon ...',
                  style: TextStyle(fontSize: 54, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
