import 'package:flutter/material.dart';
import '../widgets/contactus_button.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart'; // ✅ Import footer

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Column(
        children: [const HeaderSection(),

          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // About Infotech Project (Single full-width container)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(8, 0, 0, 0),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 4)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/img2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
            
                          // About Infotech Project (Styled Container)
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade900,
                                  Colors.blue.shade400
                                ], // Gradient colors
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'About Infotech Project',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white, // White text for contrast
                                    letterSpacing: 1.2, // Slight letter spacing
                                  ),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  'Infotech Project is a leading IT institution and development company, '
                                  'dedicated to empowering businesses and individuals with cutting-edge technology solutions. '
                                  'Our mission is to bridge the gap between technology and real-world applications, '
                                  'making innovation accessible to all.',
                                  style: TextStyle(
                                    fontSize:
                                        18, // Slightly larger font for better readability
                                    height: 1.6,
                                    color: Colors
                                        .white70, // Light white for a softer contrast
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
            
                    const SizedBox(height: 30),
            
                    // 2-Column Layout for Vision & Mission
                    LayoutBuilder(
                      builder: (context, constraints) {
                        bool isMobile =
                            constraints.maxWidth < 900; // Mobile breakpoint
            
                        return isMobile
                            ? Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: isMobile ? 15 : 25,
                                      horizontal: isMobile ? 15 : 30,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: isMobile ? 10 : 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade900,
                                          Colors.blue.shade400
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '🌍 Our Vision',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          'To be a global leader in IT education and software development by delivering innovative, '
                                          'high-quality, and scalable solutions that drive digital transformation.',
                                          style: TextStyle(
                                              fontSize: 16,
                                              height: 1.6,
                                              color: Colors.white70),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: isMobile ? 15 : 25,
                                      horizontal: isMobile ? 15 : 30,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: isMobile ? 10 : 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.deepOrange.shade700,
                                          Colors.orange.shade400
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '🚀 Our Mission',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '- Provide top-notch IT education and training.\n'
                                          '- Develop industry-leading software solutions.\n'
                                          '- Support businesses with digital transformation strategies.\n'
                                          '- Empower the next generation of tech professionals.',
                                          style: TextStyle(
                                              fontSize: 15,
                                              height: 1.6,
                                              color: Colors.white70),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 25,
                                        horizontal: 30,
                                      ),
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 10,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blue.shade900,
                                            Colors.blue.shade400
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '🌍 Our Vision',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            'To be a global leader in IT education and software development by delivering innovative, '
                                            'high-quality, and scalable solutions that drive digital transformation.',
                                            style: TextStyle(
                                                fontSize: 16,
                                                height: 1.6,
                                                color: Colors.white70),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 25,
                                        horizontal: 30,
                                      ),
                                      margin: EdgeInsets.only(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.deepOrange.shade700,
                                            Colors.orange.shade400
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '🚀 Our Mission',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '- Provide top-notch IT education and training.\n'
                                            '- Develop industry-leading software solutions.\n'
                                            '- Support businesses with digital transformation strategies.\n'
                                            '- Empower the next generation of tech professionals.',
                                            style: TextStyle(
                                                fontSize: 15,
                                                height: 1.6,
                                                color: Colors.white70),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                      },
                    ),
            
                    const SizedBox(height: 30),
            
                    // Our Core Values & Our Services
            
                    LayoutBuilder(
                      builder: (context, constraints) {
                        bool isMobile =
                            constraints.maxWidth < 900; // Mobile breakpoint
            
                        return isMobile
                            ? Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: isMobile ? 15 : 25,
                                      horizontal: isMobile ? 15 : 30,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: isMobile ? 10 : 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.green.shade700,
                                          Colors.green.shade400
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '💡 Our Core Values',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        ListTile(
                                          leading: Icon(Icons.verified,
                                              color: Colors.blueAccent),
                                          title: Text('Innovation & Excellence',
                                              style: TextStyle(color: Colors.white)),
                                          subtitle: Text(
                                            'Continuous technological innovation and excellence in our work.',
                                            style: TextStyle(color: Colors.white70),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.people,
                                              color: Colors.greenAccent),
                                          title: Text('Customer-Centric Approach',
                                              style: TextStyle(color: Colors.white)),
                                          subtitle: Text(
                                            'Understanding client needs and tailored solutions.',
                                            style: TextStyle(color: Colors.white70),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.school,
                                              color: Colors.orangeAccent),
                                          title: Text('Education & Empowerment',
                                              style: TextStyle(color: Colors.white)),
                                          subtitle: Text(
                                            'Sharing knowledge to empower aspiring professionals.',
                                            style: TextStyle(color: Colors.white70),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.security,
                                              color: Colors.redAccent),
                                          title: Text('Integrity & Trust',
                                              style: TextStyle(color: Colors.white)),
                                          subtitle: Text(
                                            'Honesty, transparency, and trust in our practices.',
                                            style: TextStyle(color: Colors.white70),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: isMobile ? 15 : 25,
                                      horizontal: isMobile ? 15 : 30,
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: isMobile ? 10 : 20,
                                      vertical: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Colors.blue.shade900,
                                          Colors.blue.shade400
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 10,
                                          offset: Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: const Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '🛠 Our Services',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Text(
                                          '- Software Development & Consulting\n'
                                          '- Web & Mobile App Development\n'
                                          '- AI & Machine Learning Solutions\n'
                                          '- Blockchain & FinTech Solutions\n'
                                          '- IT Training & Certification Programs',
                                          style: TextStyle(
                                            height: 1.6,
                                            fontSize: 16,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 25,
                                        horizontal: 30,
                                      ),
                                      margin: EdgeInsets.only(
                                        left: 20,
                                        right: 10,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.green.shade700,
                                            Colors.green.shade400
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '💡 Our Core Values',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          ListTile(
                                            leading: Icon(Icons.verified,
                                                color: Colors.blueAccent),
                                            title: Text('Innovation & Excellence',
                                                style:
                                                    TextStyle(color: Colors.white)),
                                            subtitle: Text(
                                              'Continuous technological innovation and excellence in our work.',
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.people,
                                                color: Colors.greenAccent),
                                            title: Text('Customer-Centric Approach',
                                                style:
                                                    TextStyle(color: Colors.white)),
                                            subtitle: Text(
                                              'Understanding client needs and tailored solutions.',
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.school,
                                                color: Colors.orangeAccent),
                                            title: Text('Education & Empowerment',
                                                style:
                                                    TextStyle(color: Colors.white)),
                                            subtitle: Text(
                                              'Sharing knowledge to empower aspiring professionals.',
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                          ListTile(
                                            leading: Icon(Icons.security,
                                                color: Colors.redAccent),
                                            title: Text('Integrity & Trust',
                                                style:
                                                    TextStyle(color: Colors.white)),
                                            subtitle: Text(
                                              'Honesty, transparency, and trust in our practices.',
                                              style: TextStyle(color: Colors.white70),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 25,
                                        horizontal: 30,
                                      ),
                                      margin: EdgeInsets.only(
                                        right: 20,
                                        left: 10,
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.blue.shade900,
                                            Colors.blue.shade400
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 10,
                                            offset: Offset(0, 4),
                                          ),
                                        ],
                                      ),
                                      child: const Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '🛠 Our Services',
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 15),
                                          Text(
                                            '- Software Development & Consulting\n'
                                            '- Web & Mobile App Development\n'
                                            '- AI & Machine Learning Solutions\n'
                                            '- Blockchain & FinTech Solutions\n'
                                            '- IT Training & Certification Programs',
                                            style: TextStyle(
                                              height: 1.6,
                                              fontSize: 16,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                      },
                    ),
            
                    const SizedBox(height: 30),
            
                    // Get in Touch (Single full-width container)
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10), // ✅ Added left & right margin
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green.shade900,
                            Colors.green.shade400
                          ], // Deep to bright green gradient
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '📩 Get in Touch',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // White text for contrast
                              letterSpacing: 1.2, // Slight spacing for a modern touch
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '📍 Address: WeWork Prestige Cube, Site No. 26,\n Laskar Hosur Road, Adugodi,\n Koramangala, Bengaluru,\n Karnataka 560030\n'
                            '📧 Email: contact@hoxinfotech.com\n'
                            '📞 Phone: +91 999-555-0353',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Colors.white70, // Softer white for readability
                            ),
                          ),
                          SizedBox(height: 15),
                          ContactUsButton(),
                        ],
                      ),
                    ),
            
                    const SizedBox(height: 50),
            
                    // ✅ Footer (Visible only when scrolled down)
                    const FooterSection(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
