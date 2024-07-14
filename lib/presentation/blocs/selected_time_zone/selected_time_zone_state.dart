part of 'selected_time_zone_cubit.dart';

class SelectedTimeZoneState extends Equatable {
  final String city;
  final String offset;
  final String timeZoneCode;
  final bool isDST;

  const SelectedTimeZoneState({
    required this.city,
    required this.offset,
    required this.timeZoneCode,
    required this.isDST,
  });

  factory SelectedTimeZoneState.initial() {
    return const SelectedTimeZoneState(
      city: '',
      offset: '',
      timeZoneCode: '',
      isDST: false,
    );
  }

  @override
  List<Object> get props => [city, offset, timeZoneCode, isDST];
}
