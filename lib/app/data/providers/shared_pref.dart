import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TbSharedPref {
  static final TbSharedPref _instance = TbSharedPref._internal();
  static const String userKey = 'user';

  late SharedPreferences _prefs; // Marking as 'late' to defer initialization

  factory TbSharedPref() {
    return _instance;
  }

  TbSharedPref._internal() {
    // Initialize SharedPreferences instance in the constructor
    init();
  }

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  Future<void> saveValueToSharedPreferences(String key, dynamic value) async {
    try {
      // Ensure SharedPreferences instance is initialized
      if (!_prefs.containsKey(key)) {
        await init();
      }

      if (value is String) {
        _prefs.setString(key, value);
      } else if (value is int) {
        _prefs.setInt(key, value);
      } else if (value is double) {
        _prefs.setDouble(key, value);
      } else if (value is bool) {
        _prefs.setBool(key, value);
      } else if (value is List<String>) {
        _prefs.setStringList(key, value);
      } else {
        // Handle unsupported data types if needed
        throw Exception('Unsupported data type for shared_preferences.');
      }
    } catch (e) {
      // Handle exceptions if necessary
      debugPrint('Error saving value to shared_preferences: $e');
    }
  }

  dynamic getValueFromSharedPreferences(String key) {
    try {
      // Ensure SharedPreferences instance is initialized
      if (!_prefs.containsKey(key)) {
        throw Exception('SharedPreferences not initialized.');
      }

      return _prefs.get(key);
    } catch (e) {
      // Handle exceptions if necessary
      debugPrint('Error getting value from shared_preferences: $e');
      return null;
    }
  }
}
