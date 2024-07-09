import 'package:flutter/material.dart';
import '../../../data/data_sources/time_zone_data_source_impl.dart';
import '../../../domain/entities/time_zone.dart';
import '../../theme/app_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const route = '/home';

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  late Future<List<TimeZone>> timeZonesFuture;

  @override
  void initState() {
    super.initState();
    timeZonesFuture = TimeZoneDataSourceImpl().fetchTimeZones();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Zones'),
      ),
      body: FutureBuilder<List<TimeZone>>(
        future: timeZonesFuture,
        builder: (context, snapshot) {
          print('Connection state: ${snapshot.connectionState}');
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
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
                  title: Text(timeZone.mainCity,
                      style: AppTheme.textTheme.bodySmall),
                  subtitle: Text('${timeZone.offset} (${timeZone.code})'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
