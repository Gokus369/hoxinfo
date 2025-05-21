import 'package:flutter/material.dart';
import 'package:infotech/screens/contact_us.dart';
import '../widgets/animated_page_route.dart';
import '../widgets/courses_widget.dart';
import '../widgets/header.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F8FA),
     
      body: Column(
        children: [ const HeaderSection(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // 🌟 Hero Banner
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF1E3C72), Color(0xFF2A5298)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          '✨ Unlock Your Tech Potential',
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'From Mobile to AI, Cybersecurity to Blockchain, explore hand-crafted courses\ntaught by real experts.',
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white70, height: 1.5),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 25),
                        ElevatedButton.icon(
                          onPressed: () {
                            // Scroll to course section or navigate
                          },
                          icon: const Icon(Icons.arrow_forward),
                          label: const Text("Browse Courses"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.indigo,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)),
                            elevation: 5,
                          ),
                        )
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 40),
            
                  // 🔥 Section Heading
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: const [
                        Icon(Icons.school, color: Colors.deepPurple),
                        SizedBox(width: 10),
                        Text(
                          'Premium Tech Courses',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 20),
            
                  // 🎓 Course Cards Grid
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    child:  CourseSection(), // ✅ Reusable widget
                  ),
            
                  const SizedBox(height: 40),
            
                  // 🌈 Call to Action
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF8E2DE2), Color(0xFF4A00E0)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 12,
                            offset: Offset(0, 6)),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'Still Wondering Where to Begin?',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'We’ll help you choose the perfect course for your goals.\nConnect with our learning advisors today!',
                          style: TextStyle(
                              fontSize: 16, color: Colors.white70, height: 1.6),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.chat_bubble_outline),
                          label: const Text('Contact Support'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.deepPurple,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 26, vertical: 14),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            elevation: 6,
                          ),
                          onPressed: () {
                         Navigator.push(
                context,
                AnimatedPageRoute(page: EnquiryForm()),
              );
                          },
                        )
                      ],
                    ),
                  ),
            
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
