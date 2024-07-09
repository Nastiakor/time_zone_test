import 'package:flutter/material.dart';

import '../views/screens/home_page.dart';

abstract class Routes {
  static Map<String, WidgetBuilder> routes = {
    HomePage.route: (context) => const HomePage(),
  };
}