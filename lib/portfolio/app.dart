import 'package:flutter/material.dart';
import 'package:my_personal_website/appbar/custom_app_bar.dart';

class PortfolioPage extends StatelessWidget {
  static const String id = 'portfolio';

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
              margin: EdgeInsets.fromLTRB(32, 0, 32, 32),
              color: Colors.transparent,
              padding: EdgeInsets.all(64),
              child: Row(
                children: [
                  Container(
                    child: Center(
                      child: Text('Portfolio page'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
