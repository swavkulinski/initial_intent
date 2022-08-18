import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'initial_intent_method_channel.dart';

abstract class InitialIntentPlatform extends PlatformInterface {
  /// Constructs a InitialIntentPlatform.
  InitialIntentPlatform() : super(token: _token);

  static final Object _token = Object();

  static InitialIntentPlatform _instance = MethodChannelInitialIntent();

  /// The default instance of [InitialIntentPlatform] to use.
  ///
  /// Defaults to [MethodChannelInitialIntent].
  static InitialIntentPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [InitialIntentPlatform] when
  /// they register themselves.
  static set instance(InitialIntentPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<Map<String, dynamic>> getData();
}
