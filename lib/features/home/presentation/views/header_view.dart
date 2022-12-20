// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cricket_app/features/core/constants/assets.dart';
import 'package:cricket_app/features/core/responsive/responsive.dart';

import '../widgets/custom_avathar.dart';
import '../widgets/custom_image.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        // Image and rating
        Column(
          children: const [
            // Image
            CustomImage(
              Assets.criketer,
              height: 255,
              fit: BoxFit.cover,
              showEditButton: true,
            ),

            // gap
            const SizedBox(
              height: 45,
            ),
          ],
        ),
        // Logo
        const Positioned(
          bottom: 10,
          child: CustomAvathar(assetName: Assets.batAndBall, radius: 40),
        ),
      ],
    );
  }
}
