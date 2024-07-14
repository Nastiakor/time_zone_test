import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:time_zone_test/presentation/views/widgets/text_info_card.dart';
import '../../blocs/selected_time_zone/selected_time_zone_cubit.dart';
import '../widgets/clock_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/time_zone_card.dart';

@RoutePage()
class TimeZoneDetailsPage extends StatelessWidget {
  final String city;
  final String offset;
  final String time;
  final String date;
  final bool showSystemTime;
  final bool isDST;

  const TimeZoneDetailsPage({
    super.key,
    required this.city,
    required this.offset,
    required this.time,
    required this.date,
    required this.showSystemTime,
    required this.isDST,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: city,
        subtitle: offset,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              ClockCard(
                timeZoneCode: offset,
                showSystemTime: false,
                isDST: isDST,
              ),
              const SizedBox(height: 2),
              TimeZoneCard(
                title: 'Fuseau horaire',
                subtitleWidget: Text('Heure d’été : $offset'),
                imagePath: 'assets/images/world_map.svg',
              ),
              const SizedBox(height: 2),
              TextInfoCard(
                  title: 'Date complète',
                  subtitle: DateFormat('EEEE, d MMMM yyyy').format(DateTime.now())),
              const SizedBox(height: 64),
              ElevatedButton(
                onPressed: () {
                  context.read<SelectedTimeZoneCubit>().setSelectedTimeZone(
                    city: city,
                    offset: offset,
                    timeZoneCode: offset,
                    isDST: isDST,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fuseau horaire sélectionné')),
                  );
                  context.router.maybePop();
                },
                child: const Text('Choisir ce fuseau horaire'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
