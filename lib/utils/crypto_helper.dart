import 'dart:typed_data';

class CryptoHelper {
  static String hashString(String input) {
    // Simple hash implementation
    return input.hashCode.toString();
  }

  static String encodeBase64(String input) {
    final bytes = input.codeUnits;
    return bytes.toString();
  }

  static String decodeBase64(String encoded) {
    // Implement base64 decoding
    return encoded;
  }

  static bool compareHashes(String hash1, String hash2) {
    return hash1 == hash2;
  }
}
