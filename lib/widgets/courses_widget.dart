<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'dart:math';
import 'course_registration_form.dart';

class CourseSection extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'name': 'Flutter Development',
      'description':
          'Build beautiful native Android & iOS apps with a single codebase using Dart. Learn UI design, state management, and API integration.',
      'image': 'assets/images/flutter.jpg',
    },
    {
      'name': 'Web Development',
      'description':
          'Create modern, responsive websites using HTML, CSS, JavaScript, and frameworks like React or Vue. Includes hands-on projects.',
      'image': 'assets/images/web.jpg',
    },
    {
      'name': 'Blockchain Basics',
      'description':
          'Understand the core concepts of blockchain, smart contracts, crypto wallets, and decentralized apps. No prior coding required.',
      'image': 'assets/images/blockchain.jpg',
    },
    {
      'name': 'AI & ML',
      'description':
          'Dive into Artificial Intelligence and Machine Learning using Python. Learn model training, NLP, computer vision, and real-world deployment.',
      'image': 'assets/images/aiml.jpg',
    },
    {
      'name': 'Cybersecurity',
      'description':
          'Learn ethical hacking, network security, and how to defend systems against attacks. Covers tools like Kali Linux, Wireshark, and Metasploit.',
      'image': 'assets/images/cybersecurity.jpg',
    },
    {
      'name': 'Data Science',
      'description':
          'Master data analytics, visualization, and predictive modeling using Python, Pandas, and SQL. Includes hands-on projects and case studies.',
      'image': 'assets/images/datascience.jpg',
    },
    {
      'name': 'Digital Marketing',
      'description':
          'Learn SEO, social media marketing, Google Ads, and email campaigns. Gain practical skills to drive traffic and increase online visibility.',
      'image': 'assets/images/digitalmarketing.jpg',
    },
    {
      'name': 'UI/UX Design',
      'description':
          'Design engaging, user-friendly interfaces using Figma, Adobe XD, and design thinking principles. Learn prototyping and usability testing.',
      'image': 'assets/images/uiux.jpg',
    },
    {
      'name': 'Cloud Computing',
      'description':
          'Understand cloud architecture and services on AWS, Azure, and Google Cloud. Learn serverless, DevOps tools, and scalable deployment.',
      'image': 'assets/images/cloud.jpg',
    },
  ];

  CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    double childAspectRatio;
    double cardPadding;
    double titleFontSize;
    double descriptionFontSize;

// Clearly defined responsive logic including overflow handling
    if (screenWidth >= 1800) {
      crossAxisCount = 5; // Large monitors (27-inch+)
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 1400) {
      crossAxisCount = 4; // Medium-large monitors (~21 inch)
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 1000) {
      crossAxisCount = 3; // Laptops and small desktops
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 600) {
      crossAxisCount = 2; // Tablets
      childAspectRatio = 0.9;
      cardPadding = 14;
      titleFontSize = 18;
      descriptionFontSize = 13;
    } else if (screenWidth >= 350) {
      crossAxisCount = 1; // Mobile screens
      childAspectRatio = 1.2;
      cardPadding = 12;
      titleFontSize = 16;
      descriptionFontSize = 12;
    } else {
      crossAxisCount = 1; // Very small screens <350px
      childAspectRatio = 1.3;
      cardPadding = 8;
      titleFontSize = 14;
      descriptionFontSize = 11;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Our Courses',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              childAspectRatio: childAspectRatio,
            ),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return FlipCourseCard(
                name: courses[index]['name']!,
                description: courses[index]['description']!,
                imagePath: courses[index]['image']!,
                padding: cardPadding,
                titleFontSize: titleFontSize,
                descriptionFontSize: descriptionFontSize,
              );
            },
          ),
        ],
      ),
    );
  }
}

class FlipCourseCard extends StatefulWidget {
  final String name;
  final String description;
  final String imagePath;
  final double padding;
  final double titleFontSize;
  final double descriptionFontSize;

  const FlipCourseCard({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.padding,
    required this.titleFontSize,
    required this.descriptionFontSize,
  });

  @override
  _FlipCourseCardState createState() => _FlipCourseCardState();
}

class _FlipCourseCardState extends State<FlipCourseCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  void _flipCard(bool hover) {
    if (hover) {
      _controller.forward();
      setState(() => isFront = false);
    } else {
      _controller.reverse();
      setState(() => isFront = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _flipCard(true),
      onExit: (_) => _flipCard(false),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => CourseRegistrationForm(
                      courseName: widget.name,
                      description: widget.description,
                      imagePath: widget.imagePath,
                    )),
          );
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final angle = _controller.value * pi;
            final isFrontSide = angle <= pi / 2;

            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(angle),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isFrontSide
                      ? const Color.fromARGB(176, 167, 166, 166)
                      : Colors.black,
                  image: !isFrontSide
                      ? DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        )
                      : null,
                ),
                child: Padding(
                  padding: EdgeInsets.all(widget.padding),
                  child: isFrontSide
                      ? _buildFrontSide()
                      : Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(pi),
                          child: _buildBackSide(),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.name,
          style: TextStyle(
            fontSize: widget.titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildBackSide() {
    return Center(
      child: Text(
        widget.description,
        style: TextStyle(
          fontSize: widget.descriptionFontSize,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
=======
import 'package:flutter/material.dart';
import 'dart:math';
import 'course_registration_form.dart';

class CourseSection extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'name': 'Flutter Development',
      'description':
          'Build beautiful native Android & iOS apps with a single codebase using Dart. Learn UI design, state management, and API integration.',
      'image': 'assets/images/flutter.jpg',
    },
    {
      'name': 'Web Development',
      'description':
          'Create modern, responsive websites using HTML, CSS, JavaScript, and frameworks like React or Vue. Includes hands-on projects.',
      'image': 'assets/images/web.jpg',
    },
    {
      'name': 'Blockchain Basics',
      'description':
          'Understand the core concepts of blockchain, smart contracts, crypto wallets, and decentralized apps. No prior coding required.',
      'image': 'assets/images/blockchain.jpg',
    },
    {
      'name': 'AI & ML',
      'description':
          'Dive into Artificial Intelligence and Machine Learning using Python. Learn model training, NLP, computer vision, and real-world deployment.',
      'image': 'assets/images/aiml.jpg',
    },
    {
      'name': 'Cybersecurity',
      'description':
          'Learn ethical hacking, network security, and how to defend systems against attacks. Covers tools like Kali Linux, Wireshark, and Metasploit.',
      'image': 'assets/images/cybersecurity.jpg',
    },
    {
      'name': 'Data Science',
      'description':
          'Master data analytics, visualization, and predictive modeling using Python, Pandas, and SQL. Includes hands-on projects and case studies.',
      'image': 'assets/images/datascience.jpg',
    },
    {
      'name': 'Digital Marketing',
      'description':
          'Learn SEO, social media marketing, Google Ads, and email campaigns. Gain practical skills to drive traffic and increase online visibility.',
      'image': 'assets/images/digitalmarketing.jpg',
    },
    {
      'name': 'UI/UX Design',
      'description':
          'Design engaging, user-friendly interfaces using Figma, Adobe XD, and design thinking principles. Learn prototyping and usability testing.',
      'image': 'assets/images/uiux.jpg',
    },
    {
      'name': 'Cloud Computing',
      'description':
          'Understand cloud architecture and services on AWS, Azure, and Google Cloud. Learn serverless, DevOps tools, and scalable deployment.',
      'image': 'assets/images/cloud.jpg',
    },
  ];

  CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    double childAspectRatio;
    double cardPadding;
    double titleFontSize;
    double descriptionFontSize;

// Clearly defined responsive logic including overflow handling
    if (screenWidth >= 1800) {
      crossAxisCount = 5; // Large monitors (27-inch+)
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 1400) {
      crossAxisCount = 4; // Medium-large monitors (~21 inch)
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 1000) {
      crossAxisCount = 3; // Laptops and small desktops
      childAspectRatio = 0.9;
      cardPadding = 16;
      titleFontSize = 20;
      descriptionFontSize = 14;
    } else if (screenWidth >= 600) {
      crossAxisCount = 2; // Tablets
      childAspectRatio = 0.9;
      cardPadding = 14;
      titleFontSize = 18;
      descriptionFontSize = 13;
    } else if (screenWidth >= 350) {
      crossAxisCount = 1; // Mobile screens
      childAspectRatio = 1.2;
      cardPadding = 12;
      titleFontSize = 16;
      descriptionFontSize = 12;
    } else {
      crossAxisCount = 1; // Very small screens <350px
      childAspectRatio = 1.3;
      cardPadding = 8;
      titleFontSize = 14;
      descriptionFontSize = 11;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Our Courses',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 50),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 50,
              mainAxisSpacing: 50,
              childAspectRatio: childAspectRatio,
            ),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              return FlipCourseCard(
                name: courses[index]['name']!,
                description: courses[index]['description']!,
                imagePath: courses[index]['image']!,
                padding: cardPadding,
                titleFontSize: titleFontSize,
                descriptionFontSize: descriptionFontSize,
              );
            },
          ),
        ],
      ),
    );
  }
}

class FlipCourseCard extends StatefulWidget {
  final String name;
  final String description;
  final String imagePath;
  final double padding;
  final double titleFontSize;
  final double descriptionFontSize;

  const FlipCourseCard({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.padding,
    required this.titleFontSize,
    required this.descriptionFontSize,
  });

  @override
  _FlipCourseCardState createState() => _FlipCourseCardState();
}

class _FlipCourseCardState extends State<FlipCourseCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  void _flipCard(bool hover) {
    if (hover) {
      _controller.forward();
      setState(() => isFront = false);
    } else {
      _controller.reverse();
      setState(() => isFront = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _flipCard(true),
      onExit: (_) => _flipCard(false),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => CourseRegistrationForm(
                      courseName: widget.name,
                      description: widget.description,
                      imagePath: widget.imagePath,
                    )),
          );
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            final angle = _controller.value * pi;
            final isFrontSide = angle <= pi / 2;

            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(angle),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isFrontSide
                      ? const Color.fromARGB(176, 167, 166, 166)
                      : Colors.black,
                  image: !isFrontSide
                      ? DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.9),
                            BlendMode.darken,
                          ),
                        )
                      : null,
                ),
                child: Padding(
                  padding: EdgeInsets.all(widget.padding),
                  child: isFrontSide
                      ? _buildFrontSide()
                      : Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(pi),
                          child: _buildBackSide(),
                        ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontSide() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              widget.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          widget.name,
          style: TextStyle(
            fontSize: widget.titleFontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildBackSide() {
    return Center(
      child: Text(
        widget.description,
        style: TextStyle(
          fontSize: widget.descriptionFontSize,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
>>>>>>> 6b65f99deab406e7eab96198fb1fdd3e84038e67
