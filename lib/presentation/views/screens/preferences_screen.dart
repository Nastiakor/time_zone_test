import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/theme/theme_cubit.dart';

@RoutePage()
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.watch<ThemeCubit>().state.isDark;
    return Center(
      child: CupertinoSwitch(
        value: isDarkTheme,
        onChanged: (value) {
          setState(() {
            context
                .read<ThemeCubit>()
                .setThemeBrightness(value ? Brightness.dark : Brightness.light);
          });
        },
      ),
    );
  }
}
