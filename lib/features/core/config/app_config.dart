import 'package:flutter/services.dart';

class AppConfig {
  // App Initial Configurations
 static
  Future<void> configureUI() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
