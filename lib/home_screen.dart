import 'package:flutter/material.dart';
import 'package:traffic_light/constants.dart';
import 'package:traffic_light/traffic_light_item.dart';
import 'package:traffic_light/traffic_light_type.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TrafficLightType> trafficLights =
      List.filled(Constants.trafficLightsCount, TrafficLightType.red);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 10,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 15.0,
            ),
            itemCount: trafficLights.length,
            itemBuilder: (context, index) {
              final item = trafficLights[index];
              return TrafficLightItem(type: item);
            },
          ),
        ),
      ),
    );
  }
}
