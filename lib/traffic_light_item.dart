import 'package:flutter/material.dart';
import 'package:traffic_light/traffic_light_type.dart';

class TrafficLightItem extends StatelessWidget {
  const TrafficLightItem({
    super.key,
    required this.trafficLightType,
  });

  final TrafficLightType trafficLightType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCircle(
          color: Colors.red,
          isWorking: trafficLightType.isRed(),
        ),
        SizedBox(width: 8),
        _buildCircle(
          color: Colors.yellow,
          isWorking: trafficLightType.isYellow(),
        ),
        SizedBox(width: 8),
        _buildCircle(
          color: Colors.green,
          isWorking: trafficLightType.isGreen(),
        ),
      ],
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
