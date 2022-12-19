// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cricket_app/features/home/presentation/widgets/custom_icon.dart';
import 'package:cricket_app/features/home/presentation/widgets/vertical_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cricket_app/features/core/constants/assets.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_avathar.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';

import '../widgets/custom_button.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(5),
      height: 280,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          // head
          _HeadTile(),

          // gap
          SizedBox(height: 25),

          // Description
          _DescriptionTile(),

          // meta data
          SizedBox(height: 30),
          _MetaData(),

          // Footer User Actions
          SizedBox(height: 25),
          _Footer(),
        ],
      ),
    );
  }
}

class _HeadTile extends StatelessWidget {
  const _HeadTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        // avathar
        CustomAvathar(
          assetName: Assets.profile,
          radius: 20,
        ),

        SizedBox(width: 15),
        // user name
        CustomText('July Silverster')
      ],
    );
  }
}

class _DescriptionTile extends StatelessWidget {
  const _DescriptionTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // head
        CustomText('Description'),

        SizedBox(height: 8),
        // text
        Text(
          'anim consequat adipisicing. Irure quis do duis amet id fugiat dolore nulla ex amet eiusmod est aute.',
        )
      ],
    );
  }
}

class _MetaData extends StatelessWidget {
  const _MetaData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        // creater by
        VertcalText(title: "Created by", subtitle: "Alan's Cricket Academy"),

        // criket data
        VertcalText(title: "Cricket", subtitle: "5.06.2022"),

        // share icon
        CustomIcon(Icons.share_outlined)
      ],
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        // comment
        CustomIcon(CupertinoIcons.text_bubble),

        // heart
        CustomIcon(CupertinoIcons.heart),

        // share icon
        CustomIcon(Icons.send),

        // card View
        _CardViewButton(),
      ],
    );
  }
}

class _CardViewButton extends StatelessWidget {
  const _CardViewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: 145,
      icon: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.purple[100],
            border: Border.all(),
            borderRadius: BorderRadius.circular(8)),
        child: const CustomIcon(CupertinoIcons.eye_fill, size: 25),
      ),
      label: "Card View",
    );
  }
}
