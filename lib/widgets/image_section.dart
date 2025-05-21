<<<<<<< HEAD
import 'package:flutter/material.dart';

class FullWidthImage extends StatelessWidget {
  final double height;
  final String imagePath;

  const FullWidthImage({
    super.key,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double responsiveHeight;

    // 📐 Adjust height based on screen width (fullscreen on large screens)
    if (screenWidth >= 1200) {
      responsiveHeight = screenHeight * 0.42; // desktop fullscreen feel
    } else if (screenWidth >= 800) {
      responsiveHeight = screenHeight * 0.32; // tablets
    } else {
      responsiveHeight = screenHeight * 0.2; // mobile
    }

    return Container(
      width: double.infinity,
      height: responsiveHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // ✅ Best for fullscreen
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';

class FullWidthImage extends StatelessWidget {
  final double height;
  final String imagePath;

  const FullWidthImage({
    super.key,
    required this.height,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double responsiveHeight;

    // 📐 Adjust height based on screen width (fullscreen on large screens)
    if (screenWidth >= 1200) {
      responsiveHeight = screenHeight * 0.42; // desktop fullscreen feel
    } else if (screenWidth >= 800) {
      responsiveHeight = screenHeight * 0.32; // tablets
    } else {
      responsiveHeight = screenHeight * 0.2; // mobile
    }

    return Container(
      width: double.infinity,
      height: responsiveHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // ✅ Best for fullscreen
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
>>>>>>> 6b65f99deab406e7eab96198fb1fdd3e84038e67
