import 'package:flutter/material.dart';
import 'package:textproject/widgets/custom_appbar.dart';
import 'package:textproject/widgets/custom_drawer.dart';
import 'package:textproject/widgets/custom_footer.dart';
import 'package:textproject/widgets/home_part_body.dart';
import 'package:textproject/widgets/image_silder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: MediaQuery.of(context).size.width <= 670
          ? const CustomDrawer()
          : null,
      body: const SingleChildScrollView(
          child: Column(
        children: [
          ImageSlider(),
          SizedBox(height: 15),
          HomePartBody(),
          CustomFooter(),
        ],
      )),
    );
  }
}
