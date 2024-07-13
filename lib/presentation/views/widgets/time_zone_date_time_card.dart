import 'package:flutter/material.dart';
import '../../../domain/entities/time_zone.dart';
import '../../theme/app_theme.dart';
import '../screens/time_zone_details_page.dart';

class TimeZoneDateTimeCard extends StatelessWidget {
  final TimeZone timeZone;
  final String time;
  final String date;

  const TimeZoneDateTimeCard({
    super.key,
    required this.timeZone,
    required this.time,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final backgroundColor = brightness == Brightness.dark
        ? AppTheme.darkCardBackgroundColor
        : AppTheme.lightCardBackgroundColor;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TimeZoneDetailsPage(
              city: timeZone.mainCity,
              offset: '${timeZone.offset} (${timeZone.code})',
              time: time,
              date: date,
              showSystemTime: false,
            ),
          ),
        );
      },
      child: Card(
        color: backgroundColor,
        child: ListTile(
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
                time,
                style: Theme.of(context).textTheme.bodyLargeBold(context),
              ),
              Text(
                date,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
