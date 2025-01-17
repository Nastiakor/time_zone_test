import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/views/widgets/real_time_clock.dart';
import 'info_card.dart';

class ClockCard extends StatelessWidget {
  final String timeZoneCode;
  final bool showSystemTime;
  final bool isDST;

  const ClockCard({
    super.key,
    required this.timeZoneCode,
    required this.showSystemTime,
    required this.isDST,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Center(
        child: RealTimeClock(
          showSystemTime: showSystemTime,
          timeStyle: Theme.of(context).textTheme.labelLarge,
          timeZoneCode: timeZoneCode,
          isDST: isDST,
        ),
      ),
    );
  }
}
