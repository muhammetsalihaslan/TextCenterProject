import 'dart:async';
import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> _imageList = [
    'assets/bodyimg/exams.webp',
    'assets/bodyimg/exam2.webp',
    'assets/bodyimg/exam3.webp',
  ];

  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (!mounted) return;
      if (_currentPage < _imageList.length - 1) {
        setState(() {
          _currentPage++;
        });
      } else {
        setState(() {
          _currentPage = 0;
        });
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 3),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
        height: screenWidth > 800 ? screenWidth * 0.25 : screenWidth * 0.4,
        child: PageView.builder(
          controller: _pageController,
          itemCount: _imageList.length,
          itemBuilder: (context, index) {
            return Image.asset(
              _imageList[index],
              fit: BoxFit.cover,
            );
          },
        ));
  }
}
