class BrowserCache {
  static final BrowserCache _instance = BrowserCache._internal();
  final Map<String, dynamic> _cache = {};
  static const int _maxSize = 1000;

  factory BrowserCache() {
    return _instance;
  }

  BrowserCache._internal();

  void set(String key, dynamic value) {
    if (_cache.length >= _maxSize) {
      final firstKey = _cache.keys.first;
      _cache.remove(firstKey);
    }
    _cache[key] = value;
  }

  dynamic get(String key) => _cache[key];

  bool contains(String key) => _cache.containsKey(key);

  void remove(String key) => _cache.remove(key);

  void clear() => _cache.clear();

  int size() => _cache.length;

  Map<String, dynamic> getAll() => Map.from(_cache);
}
