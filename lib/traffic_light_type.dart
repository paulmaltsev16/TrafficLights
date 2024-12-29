enum TrafficLightType {
  green,
  yellow,
  redYellow,
  red;

  double displayTime() {
    switch (this) {
      case TrafficLightType.green:
        return 3.0;
      case TrafficLightType.yellow:
        return 1.5;
      case TrafficLightType.redYellow:
        return 1.5;
      case TrafficLightType.red:
        return 3.0;
    }
  }

  TrafficLightType next() {
    switch (this) {
      case TrafficLightType.green:
        return TrafficLightType.yellow;
      case TrafficLightType.yellow:
        return TrafficLightType.red;
      case TrafficLightType.redYellow:
        return TrafficLightType.green;
      case TrafficLightType.red:
        return TrafficLightType.redYellow;
    }
  }
}

extension TrafficLightTypeExtension on TrafficLightType {
  bool isGreen() {
    return [
      TrafficLightType.green,
    ].contains(this);
  }

  bool isYellow() {
    return [
      TrafficLightType.yellow,
      TrafficLightType.redYellow,
    ].contains(this);
  }

  bool isRed() {
    return [
      TrafficLightType.red,
      TrafficLightType.redYellow,
    ].contains(this);
  }
}
