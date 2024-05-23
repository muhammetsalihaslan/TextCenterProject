import 'package:flutter/material.dart';
import 'package:textproject/pages/home_page.dart';
import 'package:textproject/widgets/course_all.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
          child: Image.asset(
            'assets/logo/secondsmallerlogo.png',
            width: 250,
            height: 100,
            fit: BoxFit.contain,
          ),
        ),
      ),
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
