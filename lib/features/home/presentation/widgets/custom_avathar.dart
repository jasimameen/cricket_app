import 'package:flutter/material.dart';

class CustomAvathar extends StatelessWidget {
  const CustomAvathar({
    Key? key,
    this.assetName,
    this.radius,
    this.child,
    this.shadow,
  }) : super(key: key);
  final String? assetName;
  final double? radius;
  final Widget? child;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    double radiusV = radius ?? 40;
    return Stack(
      children: [
        Container(
          height: radiusV * 2,
          width: radiusV * 2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: shadow ??
                [
                  const BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2,
                    spreadRadius: 1,
                    offset: Offset(2, -1),
                  )
                ],
          ),
          child: CircleAvatar(
            backgroundImage: assetName != null ? AssetImage(assetName!) : null,
            radius: radiusV,
            child: child,
          ),
        ),
      ],
    );
  }
}
