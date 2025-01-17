import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/theme/theme_cubit.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({
    super.key,
    required this.isDarkTheme,
  });

  final bool isDarkTheme;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: Theme.of(context).cupertinoOverrideTheme?.primaryColor,
      value: isDarkTheme,
      onChanged: (value) {
        {
          context
              .read<ThemeCubit>()
              .setThemeBrightness(value ? Brightness.dark : Brightness.light);
        }
      },
    );
  }
}
