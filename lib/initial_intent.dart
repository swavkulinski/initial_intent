
import 'initial_intent_platform_interface.dart';

class InitialIntent {
  Future<Map<String,dynamic>> getData() {
    return InitialIntentPlatform.instance.getData();
  }
}
