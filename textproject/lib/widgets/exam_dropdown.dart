import 'package:flutter/material.dart';

class ExamDropDown extends StatefulWidget {
  const ExamDropDown({super.key});

  @override
  State<ExamDropDown> createState() => _ExamDropDownState();
}

class _ExamDropDownState extends State<ExamDropDown> {
  String? selectedExamType;
  List<String> examTypes = ["telc exams", "Special tests"];
  List<String> examsForType1 = [
    "telc German A1 (for immigrants)",
    "telc German A2",
    "telc German B1",
    "telc German B2",
    "telc German C1 - General",
    "telc German C1 - University",
    "telc German care",
    "telc German job"
  ];
  List<String> examsForType2 = [
    "German test for immigrants(DTZ / A2 B1)",
    "LİD test & naturalization test",
    "telc Türkçe",
    "telc English"
  ];
  @override
  Widget build(BuildContext context) {
    return const Column();
  }
}
