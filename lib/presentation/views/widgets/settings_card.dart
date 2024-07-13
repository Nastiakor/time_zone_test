import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_zone_test/presentation/views/widgets/theme_switch.dart';
import 'package:time_zone_test/presentation/views/widgets/time_format_switch.dart';
import '../../blocs/theme/theme_cubit.dart';
import '../../blocs/time_format/time_format_cubit.dart';
import 'info_card.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Affichage 24 heures',
                  style: Theme.of(context).textTheme.bodyLarge),
              BlocBuilder<TimeFormatCubit, TimeFormatState>(
                builder: (context, state) {
                  return TimeFormatSwitch(is24HourFormat: state.is24HourFormat);
                },
              ),
            ],
          ),
          Divider(
              thickness: 2, color: Theme.of(context).scaffoldBackgroundColor),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mode sombre', style: Theme.of(context).textTheme.bodyLarge),
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return ThemeSwitch(isDarkTheme: state.isDark);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
