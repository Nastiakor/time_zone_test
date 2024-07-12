import 'package:intl/intl.dart';

String getTimeInTimeZone(DateTime dateTime, int offset) {
  final adjustedDateTime = dateTime.toUtc().add(Duration(hours: offset));
  final format = DateFormat('HH:mm');
  return format.format(adjustedDateTime);
}
