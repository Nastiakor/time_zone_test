import '../entities/time_zone.dart';

abstract class TimeZoneRepository {
  Future<List<TimeZone>> getTimeZones();
}
