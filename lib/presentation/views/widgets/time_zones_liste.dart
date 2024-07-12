import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: timeZones.length,
      itemBuilder: (context, index) {
        final timeZone = timeZones[index];
        final offset = _extractOffset(timeZone.offset);
        return Builder(builder: (context) {
          return ListTile(
            title: Text(
              timeZone.mainCity,
              style: Theme.of(context).textTheme.bodyLargeRed(context),
            ),
            subtitle: Text(
              '${timeZone.offset} (${timeZone.code})',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  getTimeInTimeZone(DateTime.now(), offset),
                  style: Theme.of(context).textTheme.bodyLargeBold(context),
                ),
                Text(
                  'Friday · 12 July',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          );
        });
      },
    );
  }

  int _extractOffset(String offsetString) {
    final cleanedOffset = offsetString.replaceAll(RegExp(r'[^\d-]'), '');
    return int.parse(cleanedOffset);
  }
}
