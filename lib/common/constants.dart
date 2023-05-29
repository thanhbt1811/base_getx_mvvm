import 'package:flutter/material.dart';

class LocalizationConstants {
  static const Locale viLocale = Locale('vi', 'VN');
  static const Locale enUSLocale = Locale('en', 'US');
  static const path = 'assets/translations';
}

class NotificationConfig {
  static const highImportance = "High Importance channel";
  static const highChannelId = "flutter_channel_id_0";
  static const highChannelDescription =
      "Floating notification with sound";
  static const notificationIconPath = 'ic_notification';
}

class HomeIndex {
  static const chat = 0;
  static const contact = 1;
  static const application = 2;
  static const setting = 3;
}
