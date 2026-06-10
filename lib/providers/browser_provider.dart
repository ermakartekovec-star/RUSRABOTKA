import 'package:flutter/material.dart';

class BrowserProvider extends ChangeNotifier {
  String _currentUrl = 'https://www.google.com';
  bool _isLoading = false;
  double _pageProgress = 0.0;
  List<String> _bookmarks = [];

  String get currentUrl => _currentUrl;
  bool get isLoading => _isLoading;
  double get pageProgress => _pageProgress;
  List<String> get bookmarks => _bookmarks;

  void setCurrentUrl(String url) {
    _currentUrl = url;
    notifyListeners();
  }

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setPageProgress(double progress) {
    _pageProgress = progress.clamp(0.0, 1.0);
    notifyListeners();
  }

  void addBookmark(String url) {
    if (!_bookmarks.contains(url)) {
      _bookmarks.add(url);
      notifyListeners();
    }
  }

  void removeBookmark(String url) {
    _bookmarks.remove(url);
    notifyListeners();
  }

  bool isBookmarked(String url) => _bookmarks.contains(url);
}
