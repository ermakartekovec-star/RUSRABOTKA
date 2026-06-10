class RandomHelper {
  static int randomInt(int min, int max) {
    return min + (DateTime.now().millisecond % (max - min + 1));
  }

  static double randomDouble(double min, double max) {
    return min + (DateTime.now().millisecond / 1000) * (max - min);
  }

  static String generateRandomString(int length) {
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789';
    String result = '';
    for (int i = 0; i < length; i++) {
      result += chars[randomInt(0, chars.length - 1)];
    }
    return result;
  }

  static String generateUUID() {
    return '${generateRandomString(8)}-${generateRandomString(4)}-${generateRandomString(4)}-${generateRandomString(4)}-${generateRandomString(12)}';
  }
}
