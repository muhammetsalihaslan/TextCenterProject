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
      bool homeWidth;
      if (constraints.maxWidth <= 650) {
        homeWidth = true;
      } else {
        homeWidth = false;
      }

      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const CustomNavbar(mainTitle: "TextCenter"),
          centerTitle: true,
        ),
        if(homeWidth){
          drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Handle item 1 tap
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Handle item 2 tap
                },
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {
                  // Handle item 3 tap
                },
              ),
            ],
          ),
        ),
        } else {
          return false;
        }
        body: const Center(
          child: Text("Body Part"),
        ),
      );
    });
  }
}
