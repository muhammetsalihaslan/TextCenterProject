import 'package:flutter/material.dart';
import 'package:textproject/widgets/course_all.dart';
import 'package:textproject/widgets/custom_appbar.dart';
import 'package:textproject/widgets/custom_drawer.dart';
import 'package:textproject/widgets/custom_footer.dart';

class ExamChoosePage extends StatefulWidget {
  const ExamChoosePage({super.key});

  @override
  State<ExamChoosePage> createState() => _ExamChoosePageState();
}

class _ExamChoosePageState extends State<ExamChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MediaQuery.of(context).size.width <= 670
          ? const CustomDrawer()
          : null,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CourseAll(),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
