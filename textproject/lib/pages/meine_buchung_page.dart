import 'package:flutter/material.dart';
import 'package:textproject/widgets/course_short_details.dart';
import 'package:textproject/widgets/custom_appbar.dart';
import 'package:textproject/widgets/custom_drawer.dart';
import 'package:textproject/widgets/custom_footer.dart';

class MeineBuchung extends StatelessWidget {
  final Map<String, dynamic> course;
  final VoidCallback onBack;

  const MeineBuchung({super.key, required this.course, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MediaQuery.of(context).size.width <= 670
          ? const CustomDrawer()
          : null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CourseShortDetailCard(course: course),
              const SizedBox(height: 16),
              const CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
