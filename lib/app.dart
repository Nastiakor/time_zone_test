import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_zone_test/presentation/blocs/theme/theme_cubit.dart';
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
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Time zone map',
            debugShowCheckedModeBanner: false,
            theme: state.isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
            routerConfig: _appRouter.config(
                // navigatorObservers: TODO: add navigatorObservers
                ),
          );
        },
      ),
    );
  }
}
