import 'package:flutter/material.dart';
import 'package:textproject/widgets/course_all.dart';

class ExamChoosePage extends StatefulWidget {
  const ExamChoosePage({super.key});

  @override
  State<ExamChoosePage> createState() => _ExamChoosePageState();
}

class _ExamChoosePageState extends State<ExamChoosePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Choose Page'),
      ),
      body: const CourseAll(),
    );
  }
}
