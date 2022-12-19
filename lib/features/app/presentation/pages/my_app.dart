import 'package:cricket_app/features/core/responsive/responsive.dart';
import 'package:cricket_app/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

/// this is the root of the app UI
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
