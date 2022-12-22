import 'custom_icon.dart';
import 'package:flutter/material.dart';

import '../../../core/responsive/responsive.dart';

class CustomImage extends StatelessWidget {
  const CustomImage(
    this.path, {
    Key? key,
    this.width,
    this.height,
    this.fit,
    this.showEditButton = false,
  }) : super(key: key);

  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;

  final bool showEditButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          path,
          height: height,
          width: width,
          fit: fit,
          scale: Responsive.scale,
        ),

        // edit button
        showEditButton
            ? Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[600],
                  ),
                  padding: const EdgeInsets.all(3),
                  child: CustomIcon(
                    Icons.mode_edit_outlined,
                    size: 18,
                    color: Colors.grey[200],
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
