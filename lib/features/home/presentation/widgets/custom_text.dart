// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cricket_app/features/core/responsive/responsive.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.data, {
    Key? key,
    this.style,
  }) : super(key: key);

  final String data;
  final TextStyle? style;

  static const defaultStyle = TextStyle(
    fontFamily: 'Open sans',
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 111, 106, 106),
  );

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style ?? defaultStyle,
      textScaleFactor: Responsive.textScaleFactor,
    );
  }
}
