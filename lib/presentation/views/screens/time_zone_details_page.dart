import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/views/widgets/text_info_card.dart';
import '../widgets/clock_card.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/time_zone_card.dart';

class TimeZoneDetailsPage extends StatelessWidget {
  final String city;
  final String offset;
  final String time;
  final String date;
  final bool showSystemTime;

  const TimeZoneDetailsPage({
    super.key,
    required this.city,
    required this.offset,
    required this.time,
    required this.date,
    required this.showSystemTime,
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
                showSystemTime: showSystemTime,
              ),
              const SizedBox(height: 2),
              TimeZoneCard(
                title: 'Fuseau horaire',
                subtitleWidget: Text('Heure d’été : $offset'),
                imagePath: 'assets/images/world_map.svg',
              ),
              const SizedBox(height: 2),
              TextInfoCard(title: 'Date complète', subtitle: date),
              const SizedBox(height: 64),
              ElevatedButton(
                onPressed: () {
                  // Action when the button is pressed
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
