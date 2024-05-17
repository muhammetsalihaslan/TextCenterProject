import 'package:flutter/material.dart';
import 'package:textproject/widgets/slider_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double appBarWidth = screenWidth * 3 / 4;
            return Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width < 850
                    ? screenWidth
                    : appBarWidth,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: AppBar(
                    title: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Image.asset(
                        'assets/logo/secondsmallerlogo.png',
                        width: 250,
                        height: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    actions: MediaQuery.of(context).size.width > 670
                        ? [
                            _buildNavBarItem("Exams", context),
                            _buildNavBarItem('Kurse', context),
                            _buildNavBarItem('Prüfungen', context),
                            _buildNavBarItem('Kontakt', context),
                          ]
                        : null,
                  ),
                ),
              ),
            );
          },
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width <= 670
          ? _buildDrawer(context)
          : null,
      body: const CustomSlider(),
    );
  }

  Widget _buildNavBarItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
      SizedBox(
        height: 100,
        child: DrawerHeader(
          decoration: const BoxDecoration(color: Colors.transparent),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Image.asset(
              'assets/logo/secondsmallerlogo.png',
              width: 250,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      _buildDrawerItem('Exams', context),
      _buildDrawerItem('Kurse', context),
      _buildDrawerItem('Prüfungen', context),
      _buildDrawerItem('Kontakt', context),
    ]));
  }

  Widget _buildDrawerItem(String title, BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
