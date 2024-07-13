import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
import 'info_card.dart';

class TextInfoCard extends StatelessWidget {
  final String title;
  final String? subtitle;

  const TextInfoCard({

    super.key, required this.title, this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyLarge),
          Text(subtitle ?? '',
              style: Theme.of(context).textTheme.bodyLargeRed(context)),
        ],
      ),
    );
  }
}
