<<<<<<< HEAD
import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/our_service_widget.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false, // Important: Keep content below AppBar
      
      body: Column(
        children: [ const HeaderSection(),
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.zero,  // 🧼 Remove any margin
              padding: EdgeInsets.zero, // 🧼 Remove any padding
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo.shade900, Colors.indigo.shade100],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.zero, // 🧼 Ensure scroll view has no padding
                child: Column(
                  children: const [
                    ServicesSection(),
                    FooterSection(),
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
=======
import 'package:flutter/material.dart';
import '../widgets/footer.dart';
import '../widgets/header.dart';
import '../widgets/our_service_widget.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false, // Important: Keep content below AppBar
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(63),
        child: HeaderSection(),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.zero,  // 🧼 Remove any margin
        padding: EdgeInsets.zero, // 🧼 Remove any padding
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo.shade900, Colors.indigo.shade100],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.zero, // 🧼 Ensure scroll view has no padding
          child: Column(
            children: const [
              ServicesSection(),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
>>>>>>> 6b65f99deab406e7eab96198fb1fdd3e84038e67
