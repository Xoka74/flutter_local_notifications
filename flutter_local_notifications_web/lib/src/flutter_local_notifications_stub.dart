import 'package:flutter_local_notifications_web/flutter_local_notifications_web.dart';
import 'package:flutter_local_notifications_web/src/flutter_local_notifications_platform_web.dart';

/// A stub implementation to satisfy compilation of multi-platform packages that
/// depend on flutter_local_notifications_web.
/// This should never actually be created.
///
/// Notably, because flutter_local_notifications needs to manually register
/// flutter_local_notifications_web, anything with a transitive dependency on
/// flutter_local_notifications will also depend on
/// flutter_local_notifications_web, not just at
/// the pubspec level but the code level.
class WebFlutterLocalNotificationsPlugin extends FlutterLocalNotificationsPlatformWeb {
  /// Errors on attempted instantiation of the stub. It exists only to satisfy
  /// compile-time dependencies, and should never actually be created.
  WebFlutterLocalNotificationsPlugin() : assert(false);

  /// Errors on attempted calling of the stub. It exists only to satisfy
  /// compile-time dependencies, and should never actually be called.
  @override
  Future<void> show(
    int id,
    String? title,
    String? body, {
    WebNotificationDetails? notificationDetails,
    String? payload,
  }) async {
    assert(false);
  }
}
