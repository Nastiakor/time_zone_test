// ignore_for_file: prefer_const_constructors

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../widgets/real_time_clock.dart';

@RoutePage()
class HourScreen extends StatelessWidget {
  const HourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RealTimeClock(),
      ),
    );
  }
}
