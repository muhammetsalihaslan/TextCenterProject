import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';
import 'package:textproject/pages/home_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      SizedBox(
        height: 100,
        child: DrawerHeader(
          decoration: const BoxDecoration(color: Colors.transparent),
          child: GestureDetector(
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
      ),
      _buildDrawerItem('Exams', context),
      _buildDrawerItem('Kurse', context),
      _buildDrawerItem('Prüfungen', context),
      _buildDrawerItem('Kontakt', context),
    ]));
  }

  Widget _buildDrawerItem(String title, BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        if (title == "Exams") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExamChoosePage()),
          );
        }
      },
    );
  }
}
