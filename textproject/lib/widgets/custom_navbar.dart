// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:textproject/widgets/hoverable.dart';

class CustomNavbar extends StatefulWidget {
  final String mainTitle;
  const CustomNavbar({
    super.key,
    required this.mainTitle,
  });

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.mainTitle,
            style: _mainTitleStyle(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const HoverableText(hoverContent: Exam(), child: Text("Exams")),
              TextButton(onPressed: () {}, child: const Text("Locations")),
              TextButton(onPressed: () {}, child: const Text("Contact")),
              TextButton(onPressed: () {}, child: const Text("About Us"))
            ],
          )
        ],
      ),
    );
  }

  TextStyle _mainTitleStyle() {
    return const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  }
}

class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.all(8),
      child: const Text('Exam Content'),
    );
  }
}
