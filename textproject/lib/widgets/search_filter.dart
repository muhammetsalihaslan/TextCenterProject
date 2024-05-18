import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth =
        screenWidth > 800 ? screenWidth * 3 / 4 : screenWidth;
    return Center(
        child: Container(
      width: containerWidth,
      color: Colors.lightBlueAccent,
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.search, color: Colors.blue),
              SizedBox(width: 8),
              Text("Suchfilter",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Nutzen Sie die Suchfilter, um bestimmte Kurse schneller und einfacher zu finden.',
          ),
          SizedBox(height: 16),
        ],
      ),
    ));
  }
}
