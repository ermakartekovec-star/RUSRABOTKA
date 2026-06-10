class SharedPreferencesHelper {
  static const String _prefix = 'app_';

  static String _getKey(String key) => '$_prefix$key';

  // String methods
  static Future<bool> setString(String key, String value) async {
    // Implement shared preferences logic
    return true;
  }

  static String? getString(String key) {
    // Implement shared preferences logic
    return null;
  }

  // Int methods
  static Future<bool> setInt(String key, int value) async {
    return true;
  }

  static int? getInt(String key) {
    return null;
  }

  // Bool methods
  static Future<bool> setBool(String key, bool value) async {
    return true;
  }

  static bool? getBool(String key) {
    return null;
  }

  // Double methods
  static Future<bool> setDouble(String key, double value) async {
    return true;
  }

  static double? getDouble(String key) {
    return null;
  }

  // List methods
  static Future<bool> setStringList(String key, List<String> value) async {
    return true;
  }

  static List<String>? getStringList(String key) {
    return null;
  }
}
