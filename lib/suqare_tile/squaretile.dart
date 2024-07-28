import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath; // Define imagePath variable here

  const SquareTile({
    Key? key,
    required this.imagePath, // Accept imagePath as a parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      width: 80,
      height: 60,
      child: Image.asset(
        imagePath,
        height: 20,
      ),
    );
  }
}
