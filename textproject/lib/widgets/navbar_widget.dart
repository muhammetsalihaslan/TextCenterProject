import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBar(
          title: const Text("Püfunscenter"),
        ),
      ],
    );
  }
}
