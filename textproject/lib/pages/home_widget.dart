import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_navbar.dart';
import 'package:textproject/widgets/home_body.dart';
import 'package:textproject/widgets/home_body_search.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        Widget bodyContent;

        if (screenWidth <= 650) {
          // Ekran genişliği 600 pikselden küçükse Drawer'ı göster
          bodyContent = Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              title: const CustomNavbar(),
              centerTitle: true,
            ),
            body: const Column(children: [HomeBody(), HomeBodySearch()]),
            endDrawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                      child: Image.asset(
                    'assets/logo/smallerlogo.png',
                    width: 200,
                    height: 200,
                  )),
                  ListTile(
                    title: const Text('EXAMS'),
                    onTap: () {
                      Navigator.pop(context); // Drawer'ı kapatır
                      // Exams sayfasına gitmek için Navigator kullanabilirsiniz
                    },
                  ),
                  ListTile(
                    title: const Text('LOCATIONS'),
                    onTap: () {
                      Navigator.pop(context); // Drawer'ı kapatır
                      // Locations sayfasına gitmek için Navigator kullanabilirsiniz
                    },
                  ),
                  ListTile(
                    title: const Text('CONTACT'),
                    onTap: () {
                      Navigator.pop(context); // Drawer'ı kapatır
                      // Contact sayfasına gitmek için Navigator kullanabilirsiniz
                    },
                  ),
                  ListTile(
                    title: const Text('ABOUT US'),
                    onTap: () {
                      Navigator.pop(context); // Drawer'ı kapatır
                      // About Us sayfasına gitmek için Navigator kullanabilirsiniz
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          // Ekran genişliği 600 pikselden büyükse farklı bir widget göster
          bodyContent = Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              title: const CustomNavbar(),
              centerTitle: true,
            ),
            body: const Column(children: [HomeBody(), HomeBodySearch()]),
          );
        }

        return bodyContent;
      },
    );
  }
}
