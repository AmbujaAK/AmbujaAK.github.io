import 'package:flutter/material.dart';
import 'package:my_personal_website/providers/navigation_provider.dart';
import 'package:provider/provider.dart';

class AmbujaAkLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationProvider>(
      builder: (_, state, __) => InkWell(
        onTap: () => state.setMenuIndex(0),
        child: Row(
          children: [
            Text(
              'Ambuja',
              style: TextStyle(
                fontSize: 32,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Text(
              'AK',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
