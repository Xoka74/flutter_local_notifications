import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:flutter_local_notifications_web/src/models/web_notification_details.dart';

export 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';

/// The interface that all implementations of flutter_local_notifications_linux
/// must implement.
abstract class FlutterLocalNotificationsPlatformWeb extends FlutterLocalNotificationsPlatform {
  /// Show a notification with an optional payload that will be passed back to
  /// the app when a notification is tapped on.
  @override
  Future<void> show(
    int id,
    String? title,
    String? body, {
    WebNotificationDetails? notificationDetails,
    String? payload,
  });
}
