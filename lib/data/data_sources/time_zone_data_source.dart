import '../../domain/entities/time_zone.dart';

abstract class TimeZoneDataSource {
  Future<List<TimeZone>> fetchTimeZones();
}
