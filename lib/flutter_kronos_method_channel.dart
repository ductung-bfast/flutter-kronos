import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kronos_platform_interface.dart';

/// An implementation of [FlutterKronosPlatform] that uses method channels.
class MethodChannelFlutterKronos extends FlutterKronosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_kronos');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
