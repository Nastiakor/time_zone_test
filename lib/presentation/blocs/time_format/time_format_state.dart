part of 'time_format_cubit.dart';

class TimeFormatState extends Equatable {
  final bool is24HourFormat;

  const TimeFormatState({required this.is24HourFormat});

  @override
  List<Object> get props => [is24HourFormat];
}
