import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kronos_method_channel.dart';

abstract class FlutterKronosPlatform extends PlatformInterface {
  /// Constructs a FlutterKronosPlatform.
  FlutterKronosPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKronosPlatform _instance = MethodChannelFlutterKronos();

  /// The default instance of [FlutterKronosPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKronos].
  static FlutterKronosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKronosPlatform] when
  /// they register themselves.
  static set instance(FlutterKronosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
