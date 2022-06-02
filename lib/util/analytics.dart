import 'package:firebase_analytics/firebase_analytics.dart';

class AppAnalytics{
  static final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  static Future<void> setScreenName(String screenName) async{
    await analytics.setCurrentScreen(screenName: screenName);
  }
  static Future<void> logEvent(String name) async{
    await analytics.logEvent(name: name);
  }
}