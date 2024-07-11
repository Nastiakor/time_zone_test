import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/routes/routes.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';

class TimeZoneApp extends StatefulWidget {
  const TimeZoneApp({super.key});

  @override
  State<TimeZoneApp> createState() => _TimeZoneAppState();
}

class _TimeZoneAppState extends State<TimeZoneApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Time zone map',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(
          // navigatorObservers: TODO: add navigatorObservers
          ),
    );
  }
}
