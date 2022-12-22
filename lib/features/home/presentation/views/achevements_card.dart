import '../../../core/constants/assets.dart';
import '../../../core/constants/constands.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon.dart';
import '../widgets/custom_image.dart';
import '../widgets/custom_text.dart';
import '../widgets/link_field.dart';
import '../widgets/stats_card.dart';
import '../widgets/vertical_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AchievmentCard extends StatelessWidget {
  const AchievmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: const [
          // Head
          _HeadSection(),

          // Details Section
          _PlayerStats(),
          kDivider,

          // Team Data
          _TeamData(),
          kDivider,

          // Action Bar
          _ActionBar(),
          kDivider,

          // Footer Share
          _Footer(),
        ],
      ),
    );
  }
}

class _HeadSection extends StatelessWidget {
  const _HeadSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon
          const CustomIcon(
            CupertinoIcons.star_fill,
            color: Colors.yellow,
            size: 30,
            borderColor: Colors.black,
          ),

          // title and subtitle
          VertcalText(
            title: 'Man of the Match',
            subtitle: 'July Silver',
            subtitleStyle: CustomText.defaultStyle.copyWith(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),

          // endoresment buttton
          const CustomButton(
            icon: CustomIcon(Icons.add),
            label: "Endoresment",
            color: Color.fromARGB(255, 245, 216, 129),
            padding: EdgeInsets.all(4),
            mainAxisAlignment: MainAxisAlignment.start,
            gap: 2,
            height: 40,
          )
        ],
      ),
    );
  }
}

const items = <Stats>[
  Stats(CupertinoIcons.person_crop_circle_fill, 'Player Stats'),
  Stats(CupertinoIcons.graph_circle, 'Match Stats', Colors.blue),
  Stats(CupertinoIcons.flag_circle, 'League Details'),
];

class _PlayerStats extends StatelessWidget {
  const _PlayerStats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left with Image and Date
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const CustomImage(
                  Assets.victory,
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                  showEditButton: true,
                ),
              ),

              // date
              const SizedBox(height: 7),
              Text(
                '5th May 2022',
                style: CustomText.defaultStyle
                    .copyWith(color: Colors.lightBlue, fontSize: 12),
              ),
            ],
          ),

          const SizedBox(width: 8),

          // Right Side
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                const CustomText('Details'),
                const SizedBox(height: 6),

                // stats
                for (var item in items) ...{
                  StatsCard(
                    iconData: item.iconData,
                    text: item.text,
                    color: item.color,
                  )
                },

                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'V 2.2',
                    style: CustomText.defaultStyle
                        .copyWith(color: Colors.lightBlue, fontSize: 12),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TeamData extends StatelessWidget {
  const _TeamData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: Column(
        children: [
          for (var data in teamDataFields) ...{
            Row(
              children: [
                Expanded(child: CustomText(data['head']!)),
                Expanded(
                  child: CustomText(
                    data["data"]!,
                    style: CustomText.defaultStyle.copyWith(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            if (data != teamDataFields.last) const SizedBox(height: 25),
          }
        ],
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          // icons
          CustomIcon(CupertinoIcons.heart, size: 30),
          CustomIcon(Icons.message_outlined, size: 30),
          CustomIcon(Icons.edit_outlined, size: 30),

          // trailing
          SizedBox(width: 40),
          VertcalText(
            crossAxisAlignment: CrossAxisAlignment.end,
            title: 'League',
            titleColor: Colors.green,
            subtitle: 'Current Level',
            subtitleColor: Colors.grey,
          )
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: const [
          // share Icon
          CustomIcon(Icons.share_outlined),
          kWidth20,

          // link field
          Expanded(child: LinkField()),

          // send
          kWidth20,
          CustomIcon(Icons.send_outlined)
        ],
      ),
    );
  }
}
