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

  var _isSynchronizedWorkOfTrafficLights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: OutlinedButton(
                  onPressed: () => setState(() {
                    _isSynchronizedWorkOfTrafficLights =
                        !_isSynchronizedWorkOfTrafficLights;
                  }),
                  child: Text(
                    _isSynchronizedWorkOfTrafficLights
                        ? "Synchronize"
                        : "Chaos",
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 10,
                    mainAxisSpacing: 5.0,
                  ),
                  itemCount: trafficLights.length,
                  itemBuilder: (context, index) {
                    final item = trafficLights[index];
                    return TrafficLightItem(type: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
