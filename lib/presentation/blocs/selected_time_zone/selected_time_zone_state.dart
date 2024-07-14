part of 'selected_time_zone_cubit.dart';

class SelectedTimeZoneState extends Equatable {
  final String city;
  final String offset;
  final String timeZoneCode;

  const SelectedTimeZoneState({
    required this.city,
    required this.offset,
    required this.timeZoneCode,
  });

  factory SelectedTimeZoneState.initial() {
    return const SelectedTimeZoneState(
      city: '',
      offset: '',
      timeZoneCode: '',
    );
  }

  @override
  List<Object> get props => [city, offset, timeZoneCode];
}
