import 'package:cricket_app/features/core/config/app_config.dart';
import 'package:flutter/material.dart';

import 'features/app/presentation/pages/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.configureUI();
  runApp(const MyApp());
}
