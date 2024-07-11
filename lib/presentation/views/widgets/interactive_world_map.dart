import 'package:flutter/material.dart';
import 'package:time_zone_test/presentation/views/widgets/world_map.dart';

class InteractiveWorldMap extends StatefulWidget {
  const InteractiveWorldMap({super.key});

  @override
  InteractiveWorldMapState createState() => InteractiveWorldMapState();
}

class InteractiveWorldMapState extends State<InteractiveWorldMap> {
  Offset? _tapPosition;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        setState(() {
          _tapPosition = details.localPosition;
        });
      },
      child: Stack(
        children: [
          const WorldMap(),
          if (_tapPosition != null)
            Positioned(
              left: _tapPosition!.dx,
              top: _tapPosition!.dy,
              child: const Icon(Icons.location_on, color: Colors.red),
            ),
        ],
      ),
    );
  }
}
