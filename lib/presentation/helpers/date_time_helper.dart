import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

String getTimeInTimeZone(DateTime dateTime, int offset) {
  final adjustedDateTime = dateTime.toUtc().add(Duration(hours: offset));
  final format = DateFormat('HH:mm');
  return format.format(adjustedDateTime);
}

Stream<DateTime> timeStream() {
  return Stream.periodic(const Duration(seconds: 1), (_) {
    return DateTime.now();
  });
}

DateTime convertToTimeZone(DateTime time, String timeZone) {
  final location = tz.getLocation(timeZone);
  final tz.TZDateTime convertedTime = tz.TZDateTime.from(time, location);
  return convertedTime;
}
