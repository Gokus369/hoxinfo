import 'package:flutter/material.dart';
import '../widgets/header.dart';

class CourseRegistrationForm extends StatefulWidget {
  final String courseName;
  final String description;
  final String imagePath;

  const CourseRegistrationForm({
    required this.courseName,
    required this.description,
    required this.imagePath,
    super.key,
  });

  @override
  _CourseRegistrationFormState createState() => _CourseRegistrationFormState();
}

class _CourseRegistrationFormState extends State<CourseRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _courseController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _courseController = TextEditingController(text: widget.courseName);
  }

  final Map<String, Map<String, String>> courseDetails = {
    'Flutter Development': {
      'duration': '3 Months',
      'topics': 'Dart, Widgets, State Management, Firebase',
      'potential': 'Mobile Developer, Freelancing, App Startups',
    },
    'Web Development': {
      'duration': '4 Months',
      'topics': 'HTML, CSS, JavaScript, React/Angular',
      'potential': 'Frontend Developer, Web Freelancer, Web Agencies',
    },
    'Blockchain Basics': {
      'duration': '2 Months',
      'topics': 'Smart Contracts, Solidity, NFTs, DApps',
      'potential': 'Blockchain Dev, Web3 Startups, Crypto Firms',
    },
    'AI & ML': {
      'duration': '5 Months',
      'topics': 'Python, ML Algorithms, NLP, Deep Learning',
      'potential': 'ML Engineer, Data Scientist, AI Researcher',
    },
    'Cybersecurity': {
      'duration': '3 Months',
      'topics': 'Ethical Hacking, Network Security, Firewalls',
      'potential': 'Cybersecurity Analyst, Ethical Hacker',
    },
    'Data Science': {
      'duration': '4 Months',
      'topics': 'Python, Pandas, Data Viz, Machine Learning',
      'potential': 'Data Analyst, Data Scientist, BI Developer',
    },
    'Digital Marketing': {
      'duration': '2 Months',
      'topics': 'SEO, SEM, Social Media, Analytics',
      'potential': 'Marketing Specialist, Freelancer, Brand Consultant',
    },
    'UI/UX Design': {
      'duration': '2.5 Months',
      'topics': 'Figma, Prototyping, User Research, UX Writing',
      'potential': 'Product Designer, UI/UX Freelancer',
    },
    'Cloud Computing': {
      'duration': '3 Months',
      'topics': 'AWS, Azure, DevOps, Cloud Storage',
      'potential': 'Cloud Architect, DevOps Engineer',
    },
  };

  @override
  Widget build(BuildContext context) {
    final isWide = MediaQuery.of(context).size.width > 900;
    final currentDetails = courseDetails[widget.courseName];

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(63),
        child: HeaderSection(),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 132, 92, 241), Color(0xFF2D3250)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1200),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(20),
            ),
            child: isWide
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _buildFormSection()),
                      const SizedBox(width: 40),
                      Expanded(child: _buildCoursePreview(currentDetails)),
                    ],
                  )
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildCoursePreview(currentDetails),
                        const SizedBox(height: 40),
                        _buildFormSection(),
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormSection() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildInput(_nameController, 'Full Name'),
          _buildInput(_emailController, 'Email', isEmail: true),
          _buildInput(_phoneController, 'Phone Number', isPhone: true),
          _buildInput(_courseController, 'Course Name', readOnly: true),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 112, 113, 116),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
              textStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) _submitForm();
            },
            child: const Text('Submit Registration',
            style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Widget _buildCoursePreview(Map<String, String>? detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(widget.imagePath, height: 200, fit: BoxFit.cover),
        ),
        const SizedBox(height: 20),
        Text(
          widget.courseName,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          widget.description,
          style: const TextStyle(fontSize: 14, color: Colors.white70),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        if (detail != null)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _infoTile('🕒 Duration:', detail['duration']!),
              _infoTile('📚 Key Topics:', detail['topics']!),
              _infoTile('🚀 Career Potential:', detail['potential']!),
            ],
          ),
      ],
    );
  }

  Widget _infoTile(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 15, color: Colors.white),
          children: [
            TextSpan(
                text: title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' $value'),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(TextEditingController controller, String label,
      {bool isEmail = false, bool isPhone = false, bool readOnly = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.white10,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
        keyboardType: isEmail
            ? TextInputType.emailAddress
            : isPhone
                ? TextInputType.phone
                : TextInputType.text,
        validator: (value) {
          if (value == null || value.isEmpty) return 'Please enter $label';
          if (isEmail && !value.contains('@')) return 'Enter valid email';
          if (isPhone && value.length != 10)
            return 'Enter 10-digit phone number';
          return null;
        },
      ),
    );
  }

  void _submitForm() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Registration Successful'),
        content: Text(
          'Thank you, ${_nameController.text}!\n'
          'You have registered for ${_courseController.text}.\n'
          'We will contact you at ${_emailController.text} or ${_phoneController.text}.',
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK'))
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _courseController.dispose();
    super.dispose();
  }
}
