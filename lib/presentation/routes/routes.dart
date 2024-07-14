import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../views/screens/home_screen.dart';
import '../views/screens/hour_screen.dart';
import '../views/screens/preferences_screen.dart';
import '../views/screens/time_zone_details_page.dart';
import '../views/screens/time_zones_screen.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/',
          children: [
            AutoRoute(page: HourRoute.page, path: 'your-hour'),
            AutoRoute(page: TimeZonesRoute.page, path: 'timezones'),
            AutoRoute(page: PreferencesRoute.page, path: 'preferences'),
          ],
        ),
    AutoRoute(page: TimeZoneDetailsRoute.page, path: '/details'),
      ];
}
