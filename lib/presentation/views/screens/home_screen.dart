import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/routes/routes.dart';
import 'package:time_zone_test/presentation/views/widgets/custom_bottom_navigation_bar.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HourRoute(),
        TimeZonesRoute(),
        PreferencesRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: AppBar(
            title: Text('Fuseaux horaires', style: Theme.of(context).textTheme.titleMedium),
          ),
          body: child,
          bottomNavigationBar: CustomBottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
          ),
        );
      },
    );
  }
}
