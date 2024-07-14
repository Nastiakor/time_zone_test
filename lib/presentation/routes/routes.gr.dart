// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    HourRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HourScreen(),
      );
    },
    PreferencesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PreferencesScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    TimeZoneDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TimeZoneDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TimeZoneDetailsPage(
          key: args.key,
          city: args.city,
          offset: args.offset,
          time: args.time,
          date: args.date,
          showSystemTime: args.showSystemTime,
        ),
      );
    },
    TimeZonesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TimeZonesScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HourScreen]
class HourRoute extends PageRouteInfo<void> {
  const HourRoute({List<PageRouteInfo>? children})
      : super(
          HourRoute.name,
          initialChildren: children,
        );

  static const String name = 'HourRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreferencesScreen]
class PreferencesRoute extends PageRouteInfo<void> {
  const PreferencesRoute({List<PageRouteInfo>? children})
      : super(
          PreferencesRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreferencesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TimeZoneDetailsPage]
class TimeZoneDetailsRoute extends PageRouteInfo<TimeZoneDetailsRouteArgs> {
  TimeZoneDetailsRoute({
    Key? key,
    required String city,
    required String offset,
    required String time,
    required String date,
    required bool showSystemTime,
    List<PageRouteInfo>? children,
  }) : super(
          TimeZoneDetailsRoute.name,
          args: TimeZoneDetailsRouteArgs(
            key: key,
            city: city,
            offset: offset,
            time: time,
            date: date,
            showSystemTime: showSystemTime,
          ),
          initialChildren: children,
        );

  static const String name = 'TimeZoneDetailsRoute';

  static const PageInfo<TimeZoneDetailsRouteArgs> page =
      PageInfo<TimeZoneDetailsRouteArgs>(name);
}

class TimeZoneDetailsRouteArgs {
  const TimeZoneDetailsRouteArgs({
    this.key,
    required this.city,
    required this.offset,
    required this.time,
    required this.date,
    required this.showSystemTime,
  });

  final Key? key;

  final String city;

  final String offset;

  final String time;

  final String date;

  final bool showSystemTime;

  @override
  String toString() {
    return 'TimeZoneDetailsRouteArgs{key: $key, city: $city, offset: $offset, time: $time, date: $date, showSystemTime: $showSystemTime}';
  }
}

/// generated route for
/// [TimeZonesScreen]
class TimeZonesRoute extends PageRouteInfo<void> {
  const TimeZonesRoute({List<PageRouteInfo>? children})
      : super(
          TimeZonesRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimeZonesRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
