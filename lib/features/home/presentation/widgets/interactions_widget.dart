import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';
import 'package:cricket_app/features/home/presentation/widgets/stacked_images.dart';
import 'package:flutter/material.dart';

class InteractionsWidget extends StatelessWidget {
  const InteractionsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // stacked Image
          const StackedImages(),

          // rich Text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Alex_Stolfat12 & 46 others",
                style: CustomText.defaultStyle,
              ),
              Text("appreciate this page"),
            ],
          ),
        ],
      ),
    );
  }
}
