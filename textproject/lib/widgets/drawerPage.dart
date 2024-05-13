import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            onTap: () {
              // Ana sayfaya gitmek için Navigator kullanılabilir
            },
          ),
          ListTile(
            title: const Text('Exams'),
            onTap: () {
              // Exams sayfasına gitmek için Navigator kullanılabilir
            },
          ),
          ListTile(
            title: const Text('LOCATIONS'),
            onTap: () {
              // Locations sayfasına gitmek için Navigator kullanılabilir
            },
          ),
          ListTile(
            title: const Text('CONTACT'),
            onTap: () {
              // Contact sayfasına gitmek için Navigator kullanılabilir
            },
          ),
          ListTile(
            title: const Text('ABOUT US'),
            onTap: () {
              // About Us sayfasına gitmek için Navigator kullanılabilir
            },
          ),
        ],
      ),
    );
  }
}
