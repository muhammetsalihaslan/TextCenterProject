import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:textproject/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF003969)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
