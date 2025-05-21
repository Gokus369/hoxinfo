<<<<<<< HEAD
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      'icon': Icons.code,
      'title': 'Software Development & Consulting',
      'description':
          'End-to-end systems: Java, Python, Node.js + DevOps, Docker, Kubernetes.',
      'color': Colors.blueAccent,
    },
    {
      'icon': Icons.devices,
      'title': 'Web & Mobile App Development',
      'description':
          'Flutter, React Native, MERN, Firebase, real-time apps & PWAs.',
      'color': Color.fromARGB(255, 74, 41, 133),
    },
    {
      'icon': Icons.memory,
      'title': 'AI & Machine Learning Solutions',
      'description':
          'TensorFlow, PyTorch, SageMaker. Models for NLP, vision, analytics.',
      'color': Colors.teal,
    },
    {
      'icon': Icons.currency_bitcoin,
      'title': 'Blockchain & FinTech Solutions',
      'description':
          'Smart contracts (Solidity/Rust), dApps, NFTs, DAO tools, Web3.js.',
      'color': Colors.orangeAccent,
    },
    {
      'icon': Icons.school,
      'title': 'IT Training & Certification',
      'description':
          'Live training in AWS, DevOps, Python, Azure, Data Science & more.',
      'color': Colors.pinkAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 70, 2, 216),
            Color.fromARGB(255, 118, 7, 198)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Text(
            '🌟 Our Services',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Empowering businesses through innovation and smart technology.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white70,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 700;
              final crossAxisCount = isMobile ? 1 : 2;
              final aspectRatio = isMobile ? 1.8 : 4.0;

              return GridView.builder(
                itemCount: services.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                  childAspectRatio: aspectRatio,
                ),
                itemBuilder: (context, index) {
                  final service = services[index];
                  return Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: isMobile
                        ? SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: service['color'],
                                    child: Icon(service['icon'],
                                        color: Colors.white, size: 22),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  service['title'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: service['color'],
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  service['description'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.white70,
                                    height: 1.6,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                        )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: service['color'],
                                child: Icon(service['icon'],
                                    color: Colors.white, size: 22),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return SingleChildScrollView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            minHeight: constraints.maxHeight),
                                        child: IntrinsicHeight(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                service['title'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: service['color'],
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              Expanded(
                                                child: Text(
                                                  service['description'],
                                                  style: const TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white70,
                                                    height: 2.5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
=======
import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      'icon': Icons.code,
      'title': 'Software Development & Consulting',
      'description':
          'End-to-end systems: Java, Python, Node.js + DevOps, Docker, Kubernetes.',
      'color': Colors.blueAccent,
    },
    {
      'icon': Icons.devices,
      'title': 'Web & Mobile App Development',
      'description':
          'Flutter, React Native, MERN, Firebase, real-time apps & PWAs.',
      'color': Color.fromARGB(255, 74, 41, 133),
    },
    {
      'icon': Icons.memory,
      'title': 'AI & Machine Learning Solutions',
      'description':
          'TensorFlow, PyTorch, SageMaker. Models for NLP, vision, analytics.',
      'color': Colors.teal,
    },
    {
      'icon': Icons.currency_bitcoin,
      'title': 'Blockchain & FinTech Solutions',
      'description':
          'Smart contracts (Solidity/Rust), dApps, NFTs, DAO tools, Web3.js.',
      'color': Colors.orangeAccent,
    },
    {
      'icon': Icons.school,
      'title': 'IT Training & Certification',
      'description':
          'Live training in AWS, DevOps, Python, Azure, Data Science & more.',
      'color': Colors.pinkAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 70, 2, 216),
            Color.fromARGB(255, 118, 7, 198)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          const Text(
            '🌟 Our Services',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Empowering businesses through innovation and smart technology.',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white70,
              fontStyle: FontStyle.italic,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 700;
              final crossAxisCount = isMobile ? 1 : 2;
              final aspectRatio = isMobile ? 1.8 : 4.0;

              return GridView.builder(
                itemCount: services.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 24,
                  childAspectRatio: aspectRatio,
                ),
                itemBuilder: (context, index) {
                  final service = services[index];
                  return Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: isMobile
                        ? SingleChildScrollView(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: service['color'],
                                    child: Icon(service['icon'],
                                        color: Colors.white, size: 22),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  service['title'],
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: service['color'],
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  service['description'],
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.white70,
                                    height: 1.6,
                                  ),
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                        )
                        : Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: service['color'],
                                child: Icon(service['icon'],
                                    color: Colors.white, size: 22),
                              ),
                              const SizedBox(width: 14),
                              Expanded(
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return SingleChildScrollView(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                            minHeight: constraints.maxHeight),
                                        child: IntrinsicHeight(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                service['title'],
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: service['color'],
                                                ),
                                              ),
                                              const SizedBox(height: 6),
                                              Expanded(
                                                child: Text(
                                                  service['description'],
                                                  style: const TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white70,
                                                    height: 2.5,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
>>>>>>> 6b65f99deab406e7eab96198fb1fdd3e84038e67
