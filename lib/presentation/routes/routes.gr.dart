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
    TimeZonesRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TimeZonesScreen(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
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
