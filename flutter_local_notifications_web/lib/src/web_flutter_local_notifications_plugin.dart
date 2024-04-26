import 'dart:js_interop';

import 'package:flutter_local_notifications_web/src/flutter_local_notifications_platform_web.dart';
import 'package:flutter_local_notifications_web/src/models/permission_status.dart';
import 'package:flutter_local_notifications_web/src/models/web_notification_details.dart';
import 'package:web/web.dart' as web;

/// Web implementation of the local notifications plugin.
class WebFlutterLocalNotificationsPlugin extends FlutterLocalNotificationsPlatformWeb {
  WebFlutterLocalNotificationsPlugin();

  @override
  Future<void> show(
    int id,
    String? title,
    String? body, {
    WebNotificationDetails? notificationDetails,
    String? payload,
  }) async {
    final notification = web.Notification(title ?? 'Title', web.NotificationOptions(body: body ?? 'Body'));
  }

  Future<PermissionStatus> requestPermission() async {
    final String permissionStatus = (await web.Notification.requestPermission().toDart).toDart;

    if (permissionStatus == 'default') {
      return PermissionStatus.notAsked;
    } else if (permissionStatus == 'granted') {
      return PermissionStatus.granted;
    } else {
      return PermissionStatus.denied;
    }
  }
}
