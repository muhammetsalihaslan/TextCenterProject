import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      children: <Widget>[
        _buildPage('assets/bodyimg/exam2.webp', 'Slider 1'),
        _buildPage('assets/bodyimg/exams.webp', 'Slider 1'),
        _buildPage('assets/bodyimg/exam3.webp', 'Slider 1'),
      ],
    );
  }

  Widget _buildPage(String imagePath, String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
