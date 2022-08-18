import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'initial_intent_platform_interface.dart';

/// An implementation of [InitialIntentPlatform] that uses method channels.
class MethodChannelInitialIntent extends InitialIntentPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('initial_intent');

  @override
  Future<Map<String, dynamic>> getData() async {
    final version =
        await methodChannel.invokeMapMethod<String, dynamic>('getData');
    return version ?? {};
  }
}
