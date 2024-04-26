/// The Web implementation of `flutter_local_notifications`.
library flutter_local_notifications_web;

export 'src/flutter_local_notifications_stub.dart'
    if (dart.library.js_util) 'src/web_flutter_local_notifications_plugin.dart';

export 'src/models/permission_status.dart';
export 'src/models/web_notification_details.dart';
