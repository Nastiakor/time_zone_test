import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_zone_test/presentation/views/widgets/theme_switch.dart';
import 'package:time_zone_test/presentation/views/widgets/time_format_switch.dart';
import '../../blocs/theme/theme_cubit.dart';
import '../../blocs/time_format/time_format_cubit.dart';

class SettingsCard extends StatelessWidget {

  const SettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Thème sombre', style: Theme.of(context).textTheme.bodyLarge),
                BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return ThemeSwitch(isDarkTheme: state.isDark);
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Format 24 heures', style: Theme.of(context).textTheme.bodyLarge),
                BlocBuilder<TimeFormatCubit, TimeFormatState>(
                  builder: (context, state) {
                    return TimeFormatSwitch(is24HourFormat: state.is24HourFormat);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}