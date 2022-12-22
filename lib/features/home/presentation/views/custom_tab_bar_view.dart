import 'acheivements_view.dart';
import 'details_view.dart';
import 'package:flutter/material.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({super.key});

  final tabs = const [
    DetailsView(),
    AcheivementsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700,
      child: DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Column(
          children: [
            // tab bar
            const _TabBar(),

            // views
            Expanded(child: TabBarView(children: tabs)),
          ],
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.8)),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 2),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 0.8),
            ),
          ),
          child: TabBar(
            isScrollable: true,
            labelColor: Colors.blue,
            labelStyle: TextStyle(fontSize: 18),
            labelPadding: EdgeInsets.symmetric(horizontal: 50),
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 0,
            indicator: BoxDecoration(
              border: Border(
                top: BorderSide(),
                left: BorderSide(),
                right: BorderSide(width: 3),
                bottom: BorderSide(color: Colors.white, width: 2),
              ),
            ),
            tabs: [
              Tab(text: 'Details'),
              Tab(text: 'Achievements'),
            ],
          ),
        ),
      ),
    );
  }
}
