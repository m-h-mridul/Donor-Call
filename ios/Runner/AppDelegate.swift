import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    // my code insert this
    GMSServices.provideAPIKey("AIzaSyCASLeSkU4jqqzpyEkwXUJhos3i_M0kbKQ")
    // GMSServices.provideAPIKey("AIzaSyBiU_xbYhIZo_DyLJ1tWvHWpXZ0ZZs-wSs")
   
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
