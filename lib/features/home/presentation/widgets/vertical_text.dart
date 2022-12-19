// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';

class VertcalText extends StatelessWidget {
  const VertcalText({
    Key? key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.title,
    required this.subtitle,
    this.titleColor,
    this.subtitleColor,
    this.subtitleStyle,
  }) : super(key: key);

  final CrossAxisAlignment crossAxisAlignment;

  final String title;
  final String subtitle;

  final Color? titleColor;
  final Color? subtitleColor;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        // headText
        CustomText(title,
            style: CustomText.defaultStyle.copyWith(
              color: titleColor ?? const Color.fromARGB(255, 111, 106, 106),
            )),

        // subtitle
        CustomText(
          subtitle,
          style: subtitleStyle ??
              CustomText.defaultStyle.copyWith(
                color: subtitleColor ?? Colors.blue,
              ),
        )
      ],
    );
  }
}
