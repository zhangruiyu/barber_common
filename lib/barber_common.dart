import 'dart:async';

import 'package:flutter/services.dart';

class BarberCommon {
  static const MethodChannel _channel =
      const MethodChannel('barber_common');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
