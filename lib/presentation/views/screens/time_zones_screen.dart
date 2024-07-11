import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/theme/app_theme.dart';
import 'package:time_zone_test/presentation/views/widgets/interactive_world_map.dart';
import '../../../data/data_sources/time_zone_data_source_impl.dart';
import '../../../domain/entities/time_zone.dart';

@RoutePage()
class TimeZonesScreen extends StatefulWidget {
  const TimeZonesScreen({super.key});

  @override
  State<TimeZonesScreen> createState() => _TimeZonesScreenState();
}

class _TimeZonesScreenState extends State<TimeZonesScreen> {
  late Future<List<TimeZone>> timeZonesFuture;

  @override
  void initState() {
    super.initState();
    timeZonesFuture = TimeZoneDataSourceImpl().fetchTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const InteractiveWorldMap(),
          Expanded(
            child: FutureBuilder<List<TimeZone>>(
              future: timeZonesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(child: Text('No time zones available'));
                } else {
                  final timeZones = snapshot.data!;
                  return ListView.builder(
                    itemCount: timeZones.length,
                    itemBuilder: (context, index) {
                      final timeZone = timeZones[index];
                      return ListTile(
                        title: Text(
                          timeZone.mainCity,
                          style: Theme.of(context).textTheme.bodyLargeRed(context),
                        ),
                        subtitle: Text(
                          '${timeZone.offset} (${timeZone.code})',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
