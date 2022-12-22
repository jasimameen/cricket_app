import '../../../core/responsive/responsive.dart';
import '../../../core/utils/snack_bar.dart';
import '../../../home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

/// this is the root of the app UI
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: AppMessegin.instance,
      title: 'ESPAR Demo App',
      
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const Responsive(
        child: HomePage(),
      ),
    );
  }
}
