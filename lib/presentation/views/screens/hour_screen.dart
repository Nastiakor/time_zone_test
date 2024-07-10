import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HourScreen extends StatelessWidget {
  const HourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Your time'),
    );
  }
}
