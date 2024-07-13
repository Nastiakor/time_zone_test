import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class InfoCard extends StatelessWidget {
  final Widget child;

  const InfoCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final backgroundColor = brightness == Brightness.dark
        ? AppTheme.darkCardBackgroundColor
        : AppTheme.lightCardBackgroundColor;
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: child,
        ),
      );
    });
  }
}
