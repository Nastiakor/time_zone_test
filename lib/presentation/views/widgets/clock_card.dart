import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/views/widgets/real_time_clock.dart';

import 'info_card.dart';

class ClockCard extends StatelessWidget {
  const ClockCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Center(
        child: RealTimeClock(
          hoursAndMinutesStyle: Theme.of(context).textTheme.labelLarge,
          secondsStyle: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
