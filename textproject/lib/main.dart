import 'package:flutter/material.dart';
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
        fontFamily: 'OpenSans', // Open Sans yazı tipi olarak ayarlanıyor
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontFamily: 'OpenSans'),
          bodyMedium: TextStyle(fontFamily: 'OpenSans'),
          bodySmall: TextStyle(fontFamily: 'OpenSans'),
          headlineLarge: TextStyle(fontFamily: 'OpenSans'),
          headlineMedium: TextStyle(fontFamily: 'OpenSans'),
          headlineSmall: TextStyle(fontFamily: 'OpenSans'),
          titleLarge: TextStyle(fontFamily: 'OpenSans'),
          titleMedium: TextStyle(fontFamily: 'OpenSans'),
          titleSmall: TextStyle(fontFamily: 'OpenSans'),
          labelLarge: TextStyle(fontFamily: 'OpenSans'),
          labelMedium: TextStyle(fontFamily: 'OpenSans'),
          labelSmall: TextStyle(fontFamily: 'OpenSans'),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(
                0xFF003969)), // Tohum rengi olarak ana renk kullanılıyor
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
