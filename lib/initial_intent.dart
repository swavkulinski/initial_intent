
import 'initial_intent_platform_interface.dart';

class InitialIntent {
  Future<String> getData() {
    return InitialIntentPlatform.instance.getData();
  }
}
