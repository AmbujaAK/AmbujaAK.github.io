import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_personal_website/utils/constants.dart';
import 'package:my_personal_website/utils/responsive.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
        ),
        // color: Colors.red,
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  SizedBox(width: kDefaultPadding),
                  Text('Say Hello!'),
                ],
              ),
            ),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                hintText: 'your name',
                labelText: 'Your name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                hintText: 'you@example.com',
                labelText: 'Contact email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                hintText: 'company name',
                labelText: 'Company name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            TextFormField(
              showCursor: true,
              decoration: InputDecoration(
                hintText: 'country',
                labelText: 'Country',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: kDefaultPadding),
            TextFormField(
              showCursor: true,
              maxLines: 10,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              decoration: InputDecoration(
                hintText: 'type your message',
                labelText: 'Your message',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: kDefaultPadding * 2),
            ElevatedButton(
              style: ButtonStyle(),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
