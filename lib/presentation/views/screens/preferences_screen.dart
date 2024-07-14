import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_zone_test/presentation/views/widgets/clock_card.dart';
import 'package:time_zone_test/presentation/views/widgets/settings_card.dart';
import '../../blocs/selected_time_zone/selected_time_zone_cubit.dart';
import '../widgets/custom_app_bar.dart';

@RoutePage()
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends State<PreferencesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: 'Mes préférences d’affichage', subtitle: 'Réglages'),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ListView(
          children: [
            BlocBuilder<SelectedTimeZoneCubit, SelectedTimeZoneState>(
              builder: (context, state) {
                return ClockCard(
                  timeZoneCode: state.timeZoneCode,
                  showSystemTime: state.timeZoneCode.isEmpty,
                );
              },
            ),
            const SettingsCard(),
          ],
        ),
      ),
    );
  }
}
