
import 'package:flutter/material.dart';

abstract class AppMessegin {
  // global accessor for Scaffold message
  static GlobalKey<ScaffoldMessengerState> instance =
      GlobalKey<ScaffoldMessengerState>();
}

/// shows Alert Messages in App UI
class Alerts extends AppMessegin {
  static final _snack = AppMessegin.instance.currentState!;

  /// alert with message
  static void showSnackBar(String message) {
    _snack.removeCurrentSnackBar();
    _snack.showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: 'close',
          onPressed: () => _snack.removeCurrentSnackBar(),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
