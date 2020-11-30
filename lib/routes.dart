import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_personal_website/home/home_page.dart';

Map<String, Widget Function(BuildContext)> kRoutes = {
  HomePage.id: (context) => HomePage(),
};
