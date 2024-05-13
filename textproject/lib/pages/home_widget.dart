import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_navbar.dart';

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

        if (screenWidth < 600) {
          // Ekran genişliği 600 pikselden küçükse Drawer'ı göster
          bodyContent = Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              title: const CustomNavbar(mainTitle: "TextCenter"),
              centerTitle: true,
            ),
            body: const Center(
              child: Text("Body Part"),
            ),
            endDrawer: Drawer(
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
                    title: const Text('Ana Sayfa'),
                    onTap: () {},
                  ),
                  ListTile(
                    title: const Text('Exams'),
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
              title: const CustomNavbar(mainTitle: "TextCenter"),
              centerTitle: true,
            ),
            body: const Center(
              child: Text("Farklı İçerik"),
            ),
          );
        }

        return bodyContent;
      },
    );
  }
}
