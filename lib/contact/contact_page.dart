import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';

class ContactPage extends StatelessWidget {
  static const String id = 'contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        preferredSize: Size(double.infinity, 100.0),
      ),
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
