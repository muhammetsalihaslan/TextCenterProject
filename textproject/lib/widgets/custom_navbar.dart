// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
      width: MediaQuery.of(context).size.width * (3 / 4),
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
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: gestureButton("EXAMS"),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: gestureButton("LOCATIONS"),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: gestureButton("CONTACT"),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, top: 10),
                child: gestureButton("ABOUT US"),
              ),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector gestureButton(String title) {
    return GestureDetector(
      onTap: () {
        setState(() {});
      },
      child: Text(title, style: _mainButtonStyle()),
    );
  }

  TextStyle _mainButtonStyle() {
    return const TextStyle(
        color: Color.fromARGB(255, 54, 51, 51),
        fontSize: 15,
        fontWeight: FontWeight.bold);
  }

  TextStyle _mainTitleStyle() {
    return const TextStyle(
        color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold);
  }
}
