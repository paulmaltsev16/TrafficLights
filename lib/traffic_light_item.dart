import 'package:flutter/material.dart';
import 'package:traffic_light/traffic_light_type.dart';

class TrafficLightItem extends StatelessWidget {
  final TrafficLightType type;

  const TrafficLightItem({
    super.key,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCircle(
            color: Colors.green,
            isWorking: type.isGreen(),
          ),
          SizedBox(width: 8),
          _buildCircle(
            color: Colors.yellow,
            isWorking: type.isYellow(),
          ),
          SizedBox(width: 8),
          _buildCircle(
            color: Colors.red,
            isWorking: type.isRed(),
          ),
        ],
      ),
    );
  }

  Widget _buildCircle({required Color color, required bool isWorking}) {
    return Opacity(
      opacity: isWorking ? 1.0 : 0.2,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
