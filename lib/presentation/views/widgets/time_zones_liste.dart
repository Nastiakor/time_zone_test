import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';

import '../../../domain/entities/time_zone.dart';

class TimeZonesList extends StatelessWidget {
  const TimeZonesList({
    super.key,
    required this.timeZones,
  });

  final List<TimeZone> timeZones;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: timeZones.length,
      itemBuilder: (context, index) {
        final timeZone = timeZones[index];
        return ListTile(
          title: Text(
            timeZone.mainCity,
            style: Theme.of(context).textTheme.bodyLargeRed(context),
          ),
          subtitle: Text(
            '${timeZone.offset} (${timeZone.code})',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        );
      },
    );
  }
}
