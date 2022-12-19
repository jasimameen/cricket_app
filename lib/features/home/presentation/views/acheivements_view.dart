import 'package:cricket_app/features/home/presentation/widgets/custom_button.dart';
import 'package:cricket_app/features/home/presentation/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

import 'achevements_card.dart';

class AcheivementsView extends StatelessWidget {
  const AcheivementsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 25),
          // CustomButton
          CustomButton(
            icon: CustomIcon(Icons.add),
            label: 'Add Achievement',
            width: 255,
          ),

          // acheivement card
          SizedBox(height: 30),
          AchievmentCard(),
        ],
      ),
    );
  }
}
