import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
import 'info_card.dart';

class TimeZoneCard extends StatelessWidget {
  final String title;
  final Widget subtitleWidget;
  final String imagePath;

  const TimeZoneCard({
    super.key,
    required this.title,
    required this.subtitleWidget,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InfoCard(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                _styledSubtitleWidget(context),
              ],
            ),
          ),
          Flexible(
            child: SvgPicture.asset(
              imagePath,
              width: MediaQuery.of(context).size.width * 0.4,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _styledSubtitleWidget(BuildContext context) {
    if (subtitleWidget is Text) {
      final text = subtitleWidget as Text;
      return Text(
        text.data!,
        style: Theme.of(context).textTheme.bodyLargeRed(context),
      );
    } else if (subtitleWidget is RichText) {
      return DefaultTextStyle.merge(
        style: Theme.of(context).textTheme.bodyLargeRed(context),
        child: subtitleWidget,
      );
    } else {
      return subtitleWidget;
    }
  }
}
