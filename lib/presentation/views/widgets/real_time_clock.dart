import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../blocs/time_format/time_format_cubit.dart';
import '../../helpers/date_time_helper.dart';

class RealTimeClock extends StatefulWidget {
  final TextStyle? timeStyle;
  final String timeZoneCode;
  final bool showSystemTime;

  const RealTimeClock({
    super.key,
    this.timeStyle,
    required this.timeZoneCode,
    required this.showSystemTime,
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
    return BlocBuilder<TimeFormatCubit, TimeFormatState>(
      builder: (context, timeFormatState) {
        return StreamBuilder<DateTime>(
          stream: _timeStream,
          builder: (context, snapshot) {
            final time = snapshot.data;
            if (snapshot.connectionState == ConnectionState.active &&
                time != null) {
              final dateFormat = timeFormatState.is24HourFormat
                  ? DateFormat('HH:mm:ss')
                  : DateFormat('hh:mm:ss a');

              final displayTime = widget.showSystemTime
                  ? time
                  : convertToTimeZone(time, widget.timeZoneCode);
              final formattedTime = dateFormat.format(displayTime);
              return Text(
                formattedTime,
                style: widget.timeStyle ?? DefaultTextStyle.of(context).style,
              );
            }
            return const CircularProgressIndicator();
          },
        );
      },
    );
  }
}
