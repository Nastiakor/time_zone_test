import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/views/widgets/time_zone_date_time_card.dart';
import '../../../domain/entities/time_zone.dart';
import '../../helpers/date_time_helper.dart';

class TimeZonesList extends StatelessWidget {
  const TimeZonesList({
    super.key,
    required this.timeZones,
  });

  final List<TimeZone> timeZones;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DateTime>(
        stream: timeStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final currentTime = snapshot.data ?? DateTime.now();
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: timeZones.length,
                itemBuilder: (context, index) {
                  final timeZone = timeZones[index];
                  final time = getTimeInTimeZone(currentTime, timeZone.offset, timeZone.isDST);
                  final date = getDateInTimeZone(currentTime, timeZone.offset, timeZone.isDST);
                  return Builder(builder: (context) {
                    return TimeZoneDateTimeCard(
                      timeZone: timeZone,
                      time: time,
                      date: date,
                    );
                  });
                });
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}

