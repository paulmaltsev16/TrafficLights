import 'package:flutter/material.dart';
import 'package:traffic_light/constants.dart';
import 'package:traffic_light/traffic_light_item.dart';
import 'package:traffic_light/traffic_light_type.dart';
import 'package:traffic_light/utils.dart';

import 'get_function_with_next_traffic_light_use_case.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final getFunctionWithNextTrafficLight =
      GetFunctionWithNextTrafficLightUseCase();
  final trafficLights =
      List.filled(Constants.trafficLightsCount, TrafficLightType.red);
  var _isSynchronizedWorkOfTrafficLights = false;
  var _synchronizedTrafficLight = TrafficLightType.red;

  @override
  void initState() {
    _fillTrafficLightList();
    super.initState();
  }

  void _fillTrafficLightList() async {
    final result = await getFunctionWithNextTrafficLight();

    for (int index = 0; index < result.length; index++) {
      final item = result[index];

      item((newTrafficLightType) {
        setState(() => trafficLights[index] = newTrafficLightType);
      });
    }
  }

  void _switchSynchronizedState() async {
    setState(() {
      _isSynchronizedWorkOfTrafficLights = !_isSynchronizedWorkOfTrafficLights;
    });

    while (_isSynchronizedWorkOfTrafficLights) {
      await delay((_synchronizedTrafficLight.displayTime() * 1000).toInt());
      _synchronizedTrafficLight = _synchronizedTrafficLight.next();
    }
  }

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
                  onPressed: () => _switchSynchronizedState(),
                  child: Text(
                    _isSynchronizedWorkOfTrafficLights
                        ? "Chaos"
                        : "Synchronize",
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 10,
                  ),
                  itemCount: trafficLights.length,
                  itemBuilder: (context, index) {
                    final TrafficLightType trafficLightType;
                    if (_isSynchronizedWorkOfTrafficLights) {
                      trafficLightType = _synchronizedTrafficLight;
                    } else {
                      trafficLightType = trafficLights[index];
                    }
                    return TrafficLightItem(trafficLightType: trafficLightType);
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
