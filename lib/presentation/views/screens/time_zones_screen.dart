import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_zone_test/presentation/views/widgets/interactive_world_map.dart';
import '../../../data/data_sources/time_zone_data_source_impl.dart';
import '../../../domain/entities/time_zone.dart';
import '../../blocs/theme/theme_cubit.dart';
import '../widgets/time_zones_liste.dart';

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
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                const InteractiveWorldMap(),
                FutureBuilder<List<TimeZone>>(
                  future: timeZonesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(
                          child: Text('No time zones available'));
                    } else {
                      final timeZones = snapshot.data!;
                      return TimeZonesList(timeZones: timeZones);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
