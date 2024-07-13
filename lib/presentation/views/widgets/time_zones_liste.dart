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
                    return ListTile(
                      title: Text(
                        timeZone.mainCity,
                        style:
                            Theme.of(context).textTheme.bodyLargeRed(context),
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
                            style: Theme.of(context)
                                .textTheme
                                .bodyLargeBold(context),
                          ),
                          Text(
                            date,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    );
                  });
                });
          } else {
            return const CircularProgressIndicator();
          }
        });
  }
}
