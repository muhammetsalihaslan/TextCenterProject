import 'package:flutter/material.dart';

class HomeBodySearch extends StatefulWidget {
  const HomeBodySearch({super.key});

  @override
  State<HomeBodySearch> createState() => _HomeBodySearchState();
}

class _HomeBodySearchState extends State<HomeBodySearch> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool containerWidth;
      double containerBigWidth = MediaQuery.of(context).size.width;

      if (constraints.maxWidth >= 650) {
        containerWidth = true;
      } else {
        containerWidth = false;
      }

      return Container(
          width: containerBigWidth * 0.7,
          color: Colors.blue,
          child: Column(
            children: [
              if (containerWidth)
                const Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 8),
                    Text("Suchfilter"),
                  ],
                ),
              const Text(
                  "Please use the search function to find courses quick and easy"),
              const Column(
                children: [
                  Text("Exams"),
                  Row(children: []),
                ],
              ),
            ],
          ));
    });
  }
}