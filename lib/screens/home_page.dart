import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;

        double fontSize = screenWidth < 600 ? 16 : 20;
        double verticalPadding = screenWidth < 600 ? 24 : 40;

        return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 16),
          color: const Color.fromARGB(255, 167, 166, 166),
          child: Center(
            child: Text(
              'We are an IT institution and development company.',
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
