<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'widgets/courses_widget.dart';
import 'widgets/header.dart';
import 'widgets/image_section.dart';
import 'widgets/contactus_button.dart';
import 'widgets/footer.dart';
import 'widgets/our_service_widget.dart';

void main() {
  runApp(const InfotechWebsite());
}

class InfotechWebsite extends StatelessWidget {
  const InfotechWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const HeaderSection(), // Fixed reusable header widget
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const FullWidthImage(
                        height: 330, imagePath: 'assets/images/img1.jpg'),
                    HomeSection(),
                    const FullWidthImage(
                        height: 280, imagePath: 'assets/images/img3.jpg'),
                    const SizedBox(height: 40),
                    CourseSection(),
                    const ServicesSection(),

                    // Stylish Contact Us Section
                    Center(
                      child: Container(
                        width: double.infinity, // Set your desired card width
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 30),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                         
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '📩 Get in Touch With Us',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Have a project in mind or a question? We’d love to hear from you!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(height: 25),
                            ContactUsButton(), // Your original button
                          ],
                        ),
                      ),
                    ),

                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'widgets/courses_widget.dart';
import 'widgets/header.dart';
import 'widgets/image_section.dart';
import 'widgets/contactus_button.dart';
import 'widgets/footer.dart';
import 'widgets/our_service_widget.dart';

void main() {
  runApp(const InfotechWebsite());
}

class InfotechWebsite extends StatelessWidget {
  const InfotechWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const HeaderSection(), // Fixed reusable header widget
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const FullWidthImage(
                        height: 330, imagePath: 'assets/images/img1.jpg'),
                    const HomeSection(),
                    const FullWidthImage(
                        height: 280, imagePath: 'assets/images/img3.jpg'),
                    const SizedBox(height: 40),
                    CourseSection(),
                    const ServicesSection(),

                    // Stylish Contact Us Section
                    Center(
                      child: Container(
                        width: double.infinity, // Set your desired card width
                        padding: const EdgeInsets.symmetric(
                            vertical: 40, horizontal: 30),
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF4A00E0), Color(0xFF8E2DE2)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                         
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                            ),
                          ],
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '📩 Get in Touch With Us',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Have a project in mind or a question? We’d love to hear from you!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                              ),
                            ),
                            SizedBox(height: 25),
                            ContactUsButton(), // Your original button
                          ],
                        ),
                      ),
                    ),

                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
>>>>>>> 6b65f99deab406e7eab96198fb1fdd3e84038e67
