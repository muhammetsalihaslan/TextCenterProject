import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_navbar.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const CustomNavbar(mainTitle: "TextCenter"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("Body Part"),
        ),
      );
    });
  }
}
