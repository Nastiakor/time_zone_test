import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WorldMap extends StatelessWidget {
  const WorldMap({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double aspectRatio = 0.8;
        double height = constraints.maxWidth * aspectRatio;

        if (constraints.maxHeight < height) {
          height = constraints.maxHeight;
        }

        return SizedBox(
          width: constraints.maxWidth,
          height: height,
          child: SvgPicture.asset(
            'assets/images/world_map.svg',
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        );
      },
    );
  }
}
