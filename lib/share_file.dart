import 'dart:async';

import 'package:flutter/services.dart';

class ShareFile {
  static const MethodChannel _channel = const MethodChannel('share_file');

  static Future<String> open(filePath) async {
    Map<String, String> map = {"file_path": filePath};
    return await _channel.invokeMethod('open_file', map);
  }
}
