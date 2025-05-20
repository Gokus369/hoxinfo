import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
import '../widgets/project_widget.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 167, 171, 236),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62),
        child: HeaderSection(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProjectsSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
