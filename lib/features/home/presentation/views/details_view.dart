import 'package:flutter/material.dart';

/// This is Dummy View for Details
class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
        child: Text("This is Details View"),
      ),
    );
  }
}
