// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';

import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    Key? key,
    required this.iconData,
    required this.text,
    this.color,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    const defaultColor = Color.fromARGB(255, 111, 106, 106);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          // icon
          Icon(
            iconData,
            color: color ?? defaultColor,
          ),

          // text
          const SizedBox(width: 5),
          CustomText(
            text,
            style:
                CustomText.defaultStyle.copyWith(color: color ?? defaultColor),
          ),

          // trailing icon
          const Spacer(),
           const Icon(
             CupertinoIcons.info,
             size: 18,
             color: defaultColor,
           ),
        ],
      ),
    );
  }
}

class Stats {
  final IconData iconData;
  final String text;
  final Color? color;

  const Stats(this.iconData, this.text, [this.color]);
}
