import '../../domain/entities/time_zone.dart';
import '../../domain/repositories/time_zone_repository.dart';
import '../data_sources/time_zone_data_source.dart';

class TimeZoneRepositoryImpl implements TimeZoneRepository {
  final TimeZoneDataSource dataSource;

  TimeZoneRepositoryImpl(this.dataSource);

  @override
  Future<List<TimeZone>> getTimeZones() async {
    return await dataSource.fetchTimeZones();
  }
}
