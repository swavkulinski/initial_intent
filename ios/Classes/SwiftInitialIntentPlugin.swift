import Flutter
import UIKit

public class SwiftInitialIntentPlugin: NSObject, FlutterPlugin {
    private var initialIntent: String?
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "initial_intent", binaryMessenger: registrar.messenger())
    let instance = SwiftInitialIntentPlugin()
      
    registrar.addMethodCallDelegate(instance, channel: channel)
    registrar.addApplicationDelegate(instance)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(initialIntent ?? "{}")
  }
    
  
    public func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
           //print here
        initialIntent = url.absoluteString
            return false
        }
        
}

