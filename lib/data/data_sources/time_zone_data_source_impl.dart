import 'dart:convert';
import 'package:flutter/services.dart';
import '../../domain/entities/time_zone.dart';

class TimeZoneDataSourceImpl {
  Future<List<TimeZone>> fetchTimeZones() async {
    try {
      final response = await rootBundle.loadString('assets/time_zones.json');
      final List<dynamic> data = json.decode(response)['time_zones'];
      return data.map((json) => TimeZone.fromJson(json)).toList();
    } catch (e) {
      print('Error loading time zones: $e');
      rethrow;
    }
  }
}
