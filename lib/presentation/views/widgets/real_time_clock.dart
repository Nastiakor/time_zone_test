import 'package:flutter/material.dart';

class RealTimeClock extends StatefulWidget {
  const RealTimeClock({super.key});

  @override
  State<RealTimeClock> createState() => _RealTimeClockState();
}

class _RealTimeClockState extends State<RealTimeClock> {
  late Stream<DateTime> _timeStream;

  @override
  void initState() {
    super.initState();
    _timeStream = _getTimeStream();
  }

  Stream<DateTime> _getTimeStream() async* {
    while (true) {
      yield DateTime.now();
      await Future.delayed(const Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DateTime>(
      stream: _timeStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final time = snapshot.data;
          if (time != null) {
            final formattedTime =
                "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')}";
            return Text(
              formattedTime,
              style: Theme.of(context).textTheme.bodySmall,
            );
          }
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
