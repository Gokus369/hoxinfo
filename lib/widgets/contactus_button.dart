import 'package:flutter/material.dart';
import '../screens/contact_us.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 600; // Mobile breakpoint

        return Padding(
          padding: EdgeInsets.all(isMobile ? 15 : 20), // Adjust padding
          child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 167, 166, 166), // Light gray color
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 15 : 25, // Adjust horizontal padding
                  vertical: isMobile ? 8 : 12, // Adjust vertical padding
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(isMobile ? 8 : 12), // Adjust border radius
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnquiryForm()),
                );
              },
              child: Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: isMobile ? 16 : 18, // Adjust font size
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
