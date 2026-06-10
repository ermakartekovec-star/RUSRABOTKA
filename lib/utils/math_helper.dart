class MathHelper {
  static int clamp(int value, int min, int max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
  }

  static double clampDouble(double value, double min, double max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
  }

  static double lerp(double start, double end, double t) {
    return start + (end - start) * t;
  }

  static double distance(double x1, double y1, double x2, double y2) {
    final dx = x2 - x1;
    final dy = y2 - y1;
    return (dx * dx + dy * dy).toDouble().sqrt();
  }

  static double toRadian(double degree) {
    return degree * (3.141592653589793 / 180);
  }

  static double toDegree(double radian) {
    return radian * (180 / 3.141592653589793);
  }
}
