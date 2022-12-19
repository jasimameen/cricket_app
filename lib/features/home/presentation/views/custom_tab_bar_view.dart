import 'package:cricket_app/features/home/presentation/views/acheivements_view.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({super.key});

  final tabs = const [
    AcheivementsView(),
    AcheivementsView(),
  ];

  @override
  Widget build(BuildContext context) {
    const border = BorderSide(width: 1, color: Colors.grey);
    return SizedBox(
      height: 700,
      child: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Column(
          children: [
            // tab bar
            TabBar(
              isScrollable: true,
              labelStyle:
                  const TextStyle(fontSize: 18, color: Colors.lightBlue),
              labelPadding: const EdgeInsets.symmetric(horizontal: 50),
              unselectedLabelColor: Colors.black,
              indicatorWeight: 0,
              indicator: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              tabs: const [
                Tab(text: 'Details'),
                Tab(text: 'Achievements'),
              ],
            ),

            // views
            Expanded(child: TabBarView(children: tabs)),
          ],
        ),
      ),
    );
  }
}
