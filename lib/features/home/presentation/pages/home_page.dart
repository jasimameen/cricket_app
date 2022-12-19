import 'package:cricket_app/features/home/presentation/views/bottom_nav_bar.dart';
import 'package:cricket_app/features/home/presentation/views/custom_tab_bar_view.dart';
import 'package:cricket_app/features/home/presentation/views/header_view.dart';
import 'package:cricket_app/features/home/presentation/views/post_card.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_avathar.dart';
import '../widgets/custom_icon.dart';
import '../widgets/interactions_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          CupertinoIcons.chevron_back,
          size: 35,
        ),
        title: const CustomText("Cricket"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        toolbarHeight: 72,
      ),
      body: ListView(
        children: [
          // Header
          const HeaderView(),

          // contents
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                // ratings
                RatingBar(),

                // PostCard
                SizedBox(height: 20),
                PostCard(),
                // divider
                Divider(),

                // Engagments
                InteractionsWidget(),

                // TabBar View
                SizedBox(height: 23),
                CustomTabBarView(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class RatingBar extends StatelessWidget {
  const RatingBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        height: 55,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < 3; i++) ...{
              const CustomAvathar(
                child: CustomIcon(CupertinoIcons.star, size: 17),
              )
            },
            const SizedBox(width: 37),
            for (int i = 0; i < 3; i++) ...{
              const CustomAvathar(
                child: CustomIcon(CupertinoIcons.star, size: 17),
              )
            },
          ],
        ),
      ),
    );
  }
}
