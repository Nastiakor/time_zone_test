import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
import 'package:time_zone_test/presentation/views/widgets/clock_card.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:time_zone_test/presentation/views/widgets/time_zone_card.dart';
import '../../../data/data_sources/location_service.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/text_info_card.dart';

@RoutePage()
class HourScreen extends StatefulWidget {
  const HourScreen({super.key});

  @override
  State<HourScreen> createState() => _HourScreenState();
}

class _HourScreenState extends State<HourScreen> {
  String? _location;
  String? _timeZoneInfo;
  final LocationService _locationService = LocationService();

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    _getLocation();
  }

  Future<void> _getLocation() async {
    try {
      Position position = await _locationService.getCurrentLocation();
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      Placemark placemark = placemarks[0];
      setState(() {
        _location = '${placemark.locality}, ${placemark.country}';
      });
      _getTimeZoneInfo(position.latitude, position.longitude);
    } catch (e) {
      setState(() {
        _location = 'Unknown';
      });
    }
  }

  Future<void> _getTimeZoneInfo(double latitude, double longitude) async {
    final location = tz.getLocation('Europe/Paris');
    final now = tz.TZDateTime.now(location);
    final offset = now.timeZoneOffset.inHours;

    setState(() {
      _timeZoneInfo = 'Heure d’été : UTC ${offset >= 0 ? '+' : ''}$offset:00';
    });
  }

  String _formatDate(DateTime date) {
    return DateFormat('EEEE, d MMMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate = _formatDate(now);
    return Scaffold(
      appBar: CustomAppBar(title: 'Mon fuseau horaire', subtitle: _location),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(children: [
          const ClockCard(),
          const SizedBox(height: 2),
          TimeZoneCard(
              title: 'Fuseau horaire',
              subtitleWidget: Text(
                _timeZoneInfo ?? 'Loading...',
                style: Theme.of(context).textTheme.bodyLargeRed(context),
              ),
              imagePath: 'assets/images/world_map.svg'),
          const SizedBox(height: 2),
          TextInfoCard(title: 'Date complète', subtitle: formattedDate),
          const SizedBox(height: 2),
          TextInfoCard(title: 'Ville la plus proche', subtitle: _location),
        ]),
      ),
    );
  }
}
