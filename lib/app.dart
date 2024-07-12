import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_zone_test/domain/repositories/settings_repository_impl.dart';
import 'package:time_zone_test/presentation/blocs/theme/theme_cubit.dart';
import 'package:time_zone_test/presentation/routes/routes.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';

class TimeZoneApp extends StatefulWidget {
  const TimeZoneApp({super.key, required this.preferences});

  final SharedPreferences preferences;

  @override
  State<TimeZoneApp> createState() => _TimeZoneAppState();
}

class _TimeZoneAppState extends State<TimeZoneApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final settingsRepository =
        SettingsRepositoryImpl(preferences: widget.preferences);
    return BlocProvider(
      create: (context) => ThemeCubit(settingsRepository: settingsRepository),
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
