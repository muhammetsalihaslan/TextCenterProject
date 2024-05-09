import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_navbar.dart';
import 'package:textproject/widgets/examList.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const CustomNavbar(mainTitle: "TextCenter"),
        centerTitle: true,
      ),
      body: const Center(
        child: ExamList(),
      ),
    );
  }
}
