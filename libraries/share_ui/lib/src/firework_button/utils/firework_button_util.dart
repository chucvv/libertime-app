import 'dart:math' as math;

///
///  create by zmtzawqlp on 2019/5/27
///
num degToRad(num deg) => deg * (math.pi / 180.0);

double mapValueFromRangeToRange(double value, double fromLow, double fromHigh,
    double toLow, double toHigh) {
  return toLow + ((value - fromLow) / (fromHigh - fromLow) * (toHigh - toLow));
}

double clamp(double value, double low, double high) {
  return math.min(math.max(value, low), high);
}
