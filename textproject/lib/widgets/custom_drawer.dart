import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Google Fonts paketini dahil edin
import 'package:textproject/pages/exam_page.dart';
import 'package:textproject/pages/home_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
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
          _buildDrawerItem('PRÜFUNGEN', context),
          _buildDrawerItem('STANDORTE', context),
          _buildDrawerItem('KONTAKT', context),
          _buildDrawerItem('ÜBER UNS', context),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(String title, BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.roboto(
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onTap: () {
        if (title == "PRÜFUNGEN") {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExamChoosePage()),
          );
        }
      },
    );
  }
}
