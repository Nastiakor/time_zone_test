import '../entities/time_zone.dart';
import '../repositories/time_zone_repository.dart';

class GetTimeZones {
  final TimeZoneRepository repository;

  GetTimeZones(this.repository);

  Future<List<TimeZone>> call() {
    return repository.getTimeZones();
  }
}
