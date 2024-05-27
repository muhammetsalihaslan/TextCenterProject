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
        textTheme: GoogleFonts.robotoTextTheme().copyWith(
          bodyLarge: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          bodyMedium: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          bodySmall: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          headlineLarge: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          headlineMedium: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          headlineSmall: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          titleLarge: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          titleMedium: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          titleSmall: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          labelLarge: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          labelMedium: GoogleFonts.roboto(fontWeight: FontWeight.w400),
          labelSmall: GoogleFonts.roboto(fontWeight: FontWeight.w400),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF003969)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
