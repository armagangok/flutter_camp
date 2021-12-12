import 'dart:io';

import 'package:flutter/material.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3284743895748498~2420327432";
    } else if (Platform.isIOS) {
      debugPrint("${Platform.isMacOS}");
      return "ca-app-pub-3284743895748498~3074933556";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
