import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'selected_time_zone_state.dart';

class SelectedTimeZoneCubit extends Cubit<SelectedTimeZoneState> {
  SelectedTimeZoneCubit() : super(SelectedTimeZoneState.initial());

  void setSelectedTimeZone({
    required String city,
    required String offset,
    required String timeZoneCode,
  }) {
    emit(SelectedTimeZoneState(
      city: city,
      offset: offset,
      timeZoneCode: timeZoneCode,
    ));
  }
}
