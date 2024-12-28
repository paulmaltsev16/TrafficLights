import 'dart:math';

Future<void> delay(int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
}

int getRandom({int maxValue = 6}) {
  return Random().nextInt(maxValue);
}
