class GestureManger {
  static bool isDoubleTap(Duration? timeSinceLastTap) {
    return timeSinceLastTap != null && timeSinceLastTap.inMilliseconds < 300;
  }

  static bool isLongPress(Duration pressDuration) {
    return pressDuration.inMilliseconds > 500;
  }

  static bool isSwipe(Offset startPosition, Offset endPosition) {
    final distance = (startPosition - endPosition).distance;
    return distance > 50;
  }

  static String getSwipeDirection(Offset startPosition, Offset endPosition) {
    final dx = startPosition.dx - endPosition.dx;
    final dy = startPosition.dy - endPosition.dy;

    if (dx.abs() > dy.abs()) {
      return dx > 0 ? 'left' : 'right';
    } else {
      return dy > 0 ? 'up' : 'down';
    }
  }
}
