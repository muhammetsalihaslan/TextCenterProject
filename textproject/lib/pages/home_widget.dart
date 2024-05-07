import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_navbar.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomNavbar(mainTitle: "TextCenter"),
      ),
      body: const Center(
        child: Text("Body part "),
      ),
    );
  }
}
