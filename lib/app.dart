import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/routes/routes.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
import 'package:time_zone_test/presentation/views/screens/home_page.dart';

class TimeZoneApp extends StatelessWidget {
  const TimeZoneApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time zone map',
      theme: AppTheme.theme,
      routes: Routes.routes,
      home: const HomePage(),
    );
  }
}


