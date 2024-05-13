import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final List<String> imagePaths = [
    "assets/bodyimg/humanhand.webp",
    "assets/bodyimg/prufung.jpg"
  ];

  late final PageController _controller;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_controller.page != null &&
          _controller.page! < imagePaths.length - 1) {
        _controller.nextPage(
          duration: const Duration(seconds: 5),
          curve: Curves.easeInOut,
        );
      } else {
        _controller.animateToPage(
          0,
          duration: const Duration(seconds: 5),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: 385,
            child: PageView.builder(
              controller: _controller,
              itemCount: imagePaths.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.fill,
                );
              },
            )),
      ],
    );
  }
}
