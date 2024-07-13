import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'time_format_state.dart';

class TimeFormatCubit extends Cubit<TimeFormatState> {
  TimeFormatCubit() : super(const TimeFormatState(is24HourFormat: true));

  void setTimeFormat(bool is24HourFormat) {
    emit(TimeFormatState(is24HourFormat: is24HourFormat));
  }
}
