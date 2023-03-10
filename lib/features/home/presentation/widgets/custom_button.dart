// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cricket_app/features/core/utils/snack_bar.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.mainAxisAlignment,
    this.width,
    this.height,
    this.gap,
    this.padding,
    this.color,
    required this.icon,
    required this.label,
  }) : super(key: key);

  final MainAxisAlignment? mainAxisAlignment;

  final double? width;
  final double? height;
  final double? gap;

  final EdgeInsets? padding;

  final Color? color;

  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Alerts.showSnackBar('$label button clicked');
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 1, right: 1),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurStyle: BlurStyle.inner,
              offset: Offset(1.5, 1.5),
            ),
            BoxShadow(
              color: Colors.white,
              blurStyle: BlurStyle.inner,
              offset: Offset(0.5, 0.5),
            ),
          ],
          // border: Border.all(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          width: width,
          height: height,
          padding: padding ?? const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: color ?? Colors.white,
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
            children: [
              // icon
              icon,

              // gap
              SizedBox(width: gap ?? 10),

              // text
              CustomText(label)
            ],
          ),
        ),
      ),
    );
  }
}
