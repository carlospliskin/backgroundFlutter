
import 'dart:async';

import 'package:flutter/services.dart';

class Background {
  static const MethodChannel _channel = MethodChannel('background');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
