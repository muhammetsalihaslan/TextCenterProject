// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:textproject/widgets/drawerPage.dart';

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
  String isHovered = '';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double navbarWidth;
      bool drawerIcon = false;

      if (constraints.maxWidth >= 800) {
        navbarWidth = MediaQuery.of(context).size.width * (3 / 4);
        drawerIcon = false;
      } else if (constraints.maxWidth <= 650) {
        navbarWidth = MediaQuery.of(context).size.width;
        drawerIcon = true;
      } else {
        navbarWidth = MediaQuery.of(context).size.width;
        drawerIcon = false;
      }

      return Container(
        width: navbarWidth,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.mainTitle,
              style: _mainTitleStyle(),
            ),
            if (drawerIcon)
              (const Row())
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  gestureButton("EXAMS"),
                  gestureButton("LOCATIONS"),
                  gestureButton("CONTACT"),
                  gestureButton("ABOUT US"),
                ],
              )
          ],
        ),
      );
    });
  }

  Widget gestureButton(String title) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          isHovered = title;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = "";
        });
      },
      child: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
          child: Text(title, style: _mainButtonStyle(title == isHovered)),
        ),
      ),
    );
  }

  TextStyle _mainButtonStyle(bool isHovered) {
    return TextStyle(
        color: isHovered ? Colors.blue : const Color.fromARGB(255, 54, 51, 51),
        fontSize: 15,
        fontWeight: FontWeight.bold);
  }

  TextStyle _mainTitleStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold);
  }
}
