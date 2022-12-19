import 'package:flutter/material.dart';

class LinkField extends StatelessWidget {
  const LinkField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: double.maxFinite,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "www.featsclub/org/skill_temp_matches/playerstasts",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}
