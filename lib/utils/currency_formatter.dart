import 'package:intl/intl.dart';

class CurrencyFormatter {
  static String formatCurrency(double amount, {String symbol = '\$'}) {
    final formatter = NumberFormat.currency(symbol: symbol);
    return formatter.format(amount);
  }

  static String formatNumber(double number, {int decimalPlaces = 2}) {
    return number.toStringAsFixed(decimalPlaces);
  }

  static String formatPercentage(double value, {int decimalPlaces = 2}) {
    return '${(value * 100).toStringAsFixed(decimalPlaces)}%';
  }

  static String formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(2)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(2)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(2)} GB';
  }
}
