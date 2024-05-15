import 'package:flutter/material.dart';
import 'package:textproject/widgets/exam_dropdown.dart';

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
              const Row(children: [ExamDropDown()]),
            ],
          ));
    });
  }
}
