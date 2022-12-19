import 'package:cricket_app/features/core/constants/assets.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_avathar.dart';
import 'package:flutter/material.dart';

const empty =  <BoxShadow>[];

class StackedImages extends StatelessWidget {
  const StackedImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
            left: 0,
            child: CustomAvathar(
              assetName: images[0],
              radius: 18,
              shadow: empty,
            ),
          ),
          Positioned(
            left: 20,
            child: CustomAvathar(
              assetName: images[1],
              radius: 18,
              shadow: empty,
            ),
          ),
          Positioned(
            left: 40,
            child: CustomAvathar(
              assetName: images[2],
              radius: 18,
              shadow: empty,
            ),
          ),
        ],
      ),
    );
  }
}

const images = [Assets.avathar1, Assets.avathar2, Assets.avathar3];
