#import "InitialIntentPlugin.h"
#if __has_include(<initial_intent/initial_intent-Swift.h>)
#import <initial_intent/initial_intent-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "initial_intent-Swift.h"
#endif

@implementation InitialIntentPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftInitialIntentPlugin registerWithRegistrar:registrar];
}
@end
