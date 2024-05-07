// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  final String mainTitle;
  const CustomNavbar({
    super.key,
    required this.mainTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      color: Colors.blue,
      child: Center(
        child: Text(mainTitle),
      ),
    );
  }
}
