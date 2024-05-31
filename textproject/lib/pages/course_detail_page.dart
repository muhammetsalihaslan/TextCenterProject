import 'package:flutter/material.dart';
import 'package:textproject/widgets/course_description.dart';
import 'package:textproject/widgets/course_detail_card.dart';
import 'package:textproject/widgets/course_times_location.dart';
import 'package:textproject/widgets/custom_appbar.dart';
import 'package:textproject/widgets/custom_drawer.dart';
import 'package:textproject/widgets/custom_footer.dart';

class CourseDetailsPage extends StatelessWidget {
  final Map<String, dynamic> course;
  final VoidCallback onBack;

  const CourseDetailsPage(
      {super.key, required this.course, required this.onBack});

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
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CourseDetailCard(course: course),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    flex: 2,
                    child: CourseTimesAndLocation(),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const CourseDescription(),
              const SizedBox(height: 16),
              const CustomFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
