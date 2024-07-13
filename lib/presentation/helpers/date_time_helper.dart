import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

Future<Map<String, dynamic>> loadTimeZonesJson() async {
  final String response = await rootBundle.loadString('assets/timezones.json');
  return json.decode(response);
}

String getTimeInTimeZone(DateTime dateTime, String offset) {
  final duration = _parseOffset(offset);
  final timeZoneTime = dateTime.toUtc().add(duration);
  final format = DateFormat('HH:mm');
  return format.format(timeZoneTime);
}

String getDateInTimeZone(DateTime dateTime, String offset) {
  final duration = _parseOffset(offset);
  final timeZoneDate = dateTime.toUtc().add(duration);
  final format = DateFormat('EEEE · d MMMM');
  return format.format(timeZoneDate);
}

Duration _parseOffset(String offset) {
  final match = RegExp(r'UTC([+-]\d{2}):(\d{2})').firstMatch(offset);
  if (match != null) {
    final hours = int.parse(match.group(1)!);
    final minutes = int.parse(match.group(2)!);
    return Duration(hours: hours, minutes: minutes);
  } else {
    throw ArgumentError('Invalid offset format: $offset');
  }
}

Stream<DateTime> timeStream() {
  return Stream.periodic(const Duration(seconds: 1), (_) {
    return DateTime.now();
  });
}
