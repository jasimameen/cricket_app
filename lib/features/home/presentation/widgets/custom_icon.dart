import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.borderColor,
  });
  final IconData? icon;
  final double? size;
  final Color? borderColor;

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Icon(
          icon,
          size: size != null ? size! + 2 : 26,
          color: borderColor ?? Colors.transparent,
        ),
        Icon(
          icon,
          size: size,
          color: color,
        ),
      ],
    );
  }
}
