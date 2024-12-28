enum TrafficLightType {
  green,
  yellow,
  redYellow,
  red;

  double displayTime() {
    switch (this) {
      case TrafficLightType.green:
        return 1;
      case TrafficLightType.yellow:
        return 1;
      case TrafficLightType.redYellow:
        return 1;
      case TrafficLightType.red:
        return 1;
    }
  }

  TrafficLightType next() {
    switch (this) {
      case TrafficLightType.green:
        return TrafficLightType.yellow;
      case TrafficLightType.yellow:
        return TrafficLightType.redYellow;
      case TrafficLightType.redYellow:
        return TrafficLightType.red;
      case TrafficLightType.red:
        return TrafficLightType.green;
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
    return [TrafficLightType.yellow, TrafficLightType.redYellow].contains(this);
  }

  bool isRed() {
    return [TrafficLightType.red, TrafficLightType.redYellow].contains(this);
  }
}