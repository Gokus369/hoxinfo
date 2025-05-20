import 'package:flutter/material.dart';
import 'package:infotech/modal/modal.dart';
import '../widgets/header.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class EnquiryForm extends StatefulWidget {
  const EnquiryForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EnquiryFormState createState() => _EnquiryFormState();
}

class _EnquiryFormState extends State<EnquiryForm> {
  void _submitEnquiry() {
    final enquiry = Enquiry(
      name: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      message: _messageController.text,
    );

    // Optionally print or send this to an API
    print(enquiry.toJson());

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Enquiry Submitted'),
        content: Text(
          'Thank you, ${enquiry.name}!\nWe will contact you at ${enquiry.email} or ${enquiry.phone}.\n\nYour message:\n${enquiry.message}',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return Scaffold(
      body: Column(
        children: [
          const HeaderSection(), // ✅ No fixed height, no overflow
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return isMobile
                    ? SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              _buildLeftFormContainer(isMobile),
                              const SizedBox(height: 20),
                              _buildRightMapPlaceholder(isMobile),
                            ],
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                                flex: 4, child: _buildLeftFormContainer(false)),
                            const SizedBox(width: 20),
                            Expanded(
                                flex: 6,
                                child: _buildRightMapPlaceholder(false)),
                          ],
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeftFormContainer(bool isMobile) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo.shade900, Colors.indigo.shade300],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 6),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment:
              isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.stretch,
          children: [
            const Text(
              '📩 CONTACT US',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Please fill out the form below, and our team will get back to you shortly.',
              style: TextStyle(fontSize: 14, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 25),
            _buildTextField(_nameController, 'Full Name'),
            const SizedBox(height: 15),
            _buildTextField(_emailController, 'Email Address',
                keyboardType: TextInputType.emailAddress, isEmail: true),
            const SizedBox(height: 15),
            _buildTextField(_phoneController, 'Phone Number',
                keyboardType: TextInputType.phone, isPhone: true),
            const SizedBox(height: 15),
            TextFormField(
              controller: _messageController,
              maxLines: 4,
              decoration: _inputDecoration('Your Enquiry'),
              validator: (value) => value == null || value.isEmpty
                  ? 'Please enter your enquiry message'
                  : null,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) _submitEnquiry();
              },
              child: const Text('Submit Enquiry',
                  style: TextStyle(fontSize: 16, color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRightMapPlaceholder(bool isMobile) {
    return Container(
      height: isMobile ? 300 : double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: FlutterMap(
          options: const MapOptions(
            center: LatLng(12.9716, 77.5946),
            zoom: 13.0,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              userAgentPackageName: 'com.example.app',
            ),
            const MarkerLayer(
              markers: [
                Marker(
                  point: LatLng(12.9716, 77.5946),
                  width: 60,
                  height: 60,
                  child: Icon(Icons.location_on, color: Colors.red, size: 40),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: const TextStyle(color: Colors.white70),
      border:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      enabledBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label,
      {TextInputType keyboardType = TextInputType.text,
      bool isEmail = false,
      bool isPhone = false}) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: _inputDecoration(label),
      validator: (value) {
        if (value == null || value.isEmpty) return 'Please enter your $label';
        if (isEmail &&
            !RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$").hasMatch(value)) {
          return 'Enter a valid email';
        }
        if (isPhone && !RegExp(r"^\d{10}$").hasMatch(value)) {
          return 'Enter a valid 10-digit phone number';
        }
        return null;
      },
    );
  }

  // void _submitEnquiry() {
  //   final name = _nameController.text;
  //   final email = _emailController.text;
  //   final phone = _phoneController.text;
  //   final message = _messageController.text;

  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: const Text('Enquiry Submitted'),
  //       content: Text(
  //         'Thank you, $name!\nWe will contact you at $email or $phone.\n\nYour message:\n$message',
  //       ),
  //       actions: [
  //         TextButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: const Text('OK'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }
}
