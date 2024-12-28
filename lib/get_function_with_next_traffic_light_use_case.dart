import 'package:traffic_light/constants.dart';
import 'package:traffic_light/traffic_light_type.dart';
import 'package:traffic_light/utils.dart';

class GetFunctionWithNextTrafficLightUseCase {
  Future<List<Function>> call() async {
    List<Function> functions = [];

    for (int i = 1; i <= Constants.trafficLightsCount; i++) {
      Future<void> newFunction(Function(TrafficLightType) callback) async {
        // Each traffic light should start randomly with a delay between 0 and 5 seconds.
        await delay(waitRandom() * 1000);

        var initialTrafficLightType = TrafficLightType.red;

        while (true) {
          callback(initialTrafficLightType);
          initialTrafficLightType = initialTrafficLightType.next();
          await delay((initialTrafficLightType.displayTime() * 1000.0).toInt());
        }
      }

      functions.add(newFunction);
    }

    return functions;
  }
}
