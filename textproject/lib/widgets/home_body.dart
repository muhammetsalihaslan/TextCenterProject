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
    "assets/bodyimg/Prüfung.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imagePaths.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePaths[index],
                width: 200,
                height: 200,
                fit: BoxFit.cover, // Görüntüyü container'a sığdırmak için
              ),
            );
          },
        )
      ],
    );
  }
}
