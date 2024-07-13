import 'package:flutter/material.dart';

class RealTimeClock extends StatefulWidget {
  final TextStyle? hoursAndMinutesStyle;
  final TextStyle? secondsStyle;

  const RealTimeClock({
    super.key,
    this.hoursAndMinutesStyle,
    this.secondsStyle,
  });

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
        final time = snapshot.data;
        if (snapshot.connectionState == ConnectionState.active) {
          final hoursAndMinutes =
              "${time?.hour.toString().padLeft(2, '0')}:${time?.minute.toString().padLeft(2, '0')}";
          final seconds = time?.second.toString().padLeft(2, '0');
          if (time != null) {
            return RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: hoursAndMinutes,
                    style: widget.hoursAndMinutesStyle ?? DefaultTextStyle.of(context).style,
                  ),
                  TextSpan(
                    text: ":$seconds",
                    style: widget.secondsStyle ?? DefaultTextStyle.of(context).style,
                  ),
                ],
              ),
            );
          }
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
