import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';
import 'package:textproject/pages/home_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: AppBar(
            backgroundColor: Colors.transparent,
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
            actions: screenWidth > 670
                ? [
                    _buildNavBarItem("PRÜFUNGEN", context),
                    _buildNavBarItem('STANDORTE', context),
                    _buildNavBarItem('KONTAKT', context),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: _buildNavBarItem('ÜBER UNS', context),
                    ),
                  ]
                : null,
          ),
        ),
      ),
    );
  }

  Widget _buildNavBarItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: TextButton(
          onPressed: () {
            if (title == "Exams") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExamChoosePage()),
              );
            }
          },
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70.0);
}