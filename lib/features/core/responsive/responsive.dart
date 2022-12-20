import 'package:flutter/material.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

const mockupWidth = 360;

/// use to set responsiveness according to the scale of device
///
class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  static late double width;
  static late double height;
  static late double scale;
  static late double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    // init all device elements
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    scale = mockupWidth / width;
    textScaleFactor = width / mockupWidth;

    return PixelPerfect(
      scale: scale,
      // assetPath: 'assets/mockups/ui-mockup.png',
      child: child,
    );
  }
}
