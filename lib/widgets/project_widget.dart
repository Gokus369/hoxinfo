import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 109, 113, 184),
            Color.fromARGB(255, 105, 89, 179)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              '🚀 Our Featured Projects',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              'Showcasing innovation in AI, Blockchain, and Enterprise-grade platforms.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),

            // Reusable Cards
            _projectCard(
              context,
              title: 'LinkiFy Social',
              subtitle: 'Web3 Social Media',
              icon: Icons.group,
              description:
                  'A blockchain-integrated social platform with decentralized login, NFT avatars, token rewards & content ownership.',
              gradient: [Color(0xFF7F00FF), Color(0xFFE100FF)],
            ),
            _projectCard(
              context,
              title: 'AI Tutor',
              subtitle: 'AI-Driven Learning',
              icon: Icons.school,
              description:
                  'A voice-enabled AI tutor with custom avatars, real-time quizzes, learning paths, and analytics.',
              gradient: [Color(0xFF00B4DB), Color(0xFF0083B0)],
            ),
            _projectCard(
              context,
              title: 'Quarry & Crusher ERP',
              subtitle: 'Industrial Automation',
              icon: Icons.precision_manufacturing_rounded,
              description:
                  'Fleet tracking, stock reports, automated billing, dispatch sheets, and IoT-based measurement.',
              gradient: [Color(0xFFF7971E), Color(0xFFFFD200)],
            ),
            _projectCard(
              context,
              title: 'BRANDx Utilities',
              subtitle: 'E-Commerce Suite',
              icon: Icons.shopping_bag_outlined,
              description:
                  'Premium fashion platform with AI recommendations, influencer tools, inventory sync, and modern UI.',
              gradient: [Color(0xFFFF5F6D), Color(0xFFFFC371)],
            ),
          ],
        ),
      ),
    );
  }

  Widget _projectCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required String description,
    required List<Color> gradient,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: gradient.last.withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.white,
            child: Icon(icon, size: 26, color: gradient.first),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
                const SizedBox(height: 6),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white70,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
