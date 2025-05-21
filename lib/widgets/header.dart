import 'package:flutter/material.dart';
import 'package:infotech/main.dart';
import '../screens/about_page.dart';
import '../screens/course_page.dart';
import '../screens/projects.dart';
import '../screens/services.dart';
import 'animated_page_route.dart';
import '../screens/contact_us.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  _HeaderSectionState createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        // 🔷 Header Top Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 🔷 Brand Name
              const Text(
                'Hox Infotech',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

              // 🔷 Navigation (Desktop)
              if (screenWidth >= 900)
                Row(
                  children: [
                    _buildNavItem(context, 'Home', InfotechWebsite()),
                    _buildNavItem(context, 'About Us', AboutPage()),
                    _buildNavItem(context, 'Courses', CoursePage()),
                    _buildNavItem(context, 'Services', ServicesPage()),
                    _buildNavItem(context, 'Projects', ProjectPage()),
                    _buildNavItem(context, 'Contact Us', EnquiryForm()),
                  ],
                )
              else
                // 🔷 Mobile Menu Toggle
                IconButton(
                  icon: Icon(
                    _isMenuOpen ? Icons.close : Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isMenuOpen = !_isMenuOpen;
                    });
                  },
                ),
            ],
          ),
        ),

        // 🔷 Mobile Navigation
        if (_isMenuOpen && screenWidth < 900)
          Container(
            color: Colors.black87,
            child: Column(
              children: [
                _buildMobileNavItem(context, 'Home', InfotechWebsite()),
                _buildMobileNavItem(context, 'About Us', AboutPage()),
                _buildMobileNavItem(context, 'Courses', CoursePage()),
                _buildMobileNavItem(context, 'Services', ServicesPage()),
                _buildMobileNavItem(context, 'Projects', ProjectPage()),
                _buildMobileNavItem(context, 'Contact Us', EnquiryForm()),
              ],
            ),
          ),
      ],
    );
  }

  // 🌐 Desktop Navigation Item with InkWell effect
  Widget _buildNavItem(BuildContext context, String title, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(6),
            splashColor: Colors.white24,
            onTap: () {
              Navigator.push(context, AnimatedPageRoute(page: page));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 📱 Mobile Navigation Item
  Widget _buildMobileNavItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      onTap: () {
        Navigator.push(context, AnimatedPageRoute(page: page));
        setState(() {
          _isMenuOpen = false;
        });
      },
    );
  }
}
