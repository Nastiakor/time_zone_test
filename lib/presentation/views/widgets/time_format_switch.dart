import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/time_format/time_format_cubit.dart';

class TimeFormatSwitch extends StatelessWidget {
  const TimeFormatSwitch({
    super.key,
    required this.is24HourFormat,
  });

  final bool is24HourFormat;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: Theme.of(context).cupertinoOverrideTheme?.primaryColor,
      value: is24HourFormat,
      onChanged: (value) {
        context.read<TimeFormatCubit>().setTimeFormat(value);
      },
    );
  }
}
