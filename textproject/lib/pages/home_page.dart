import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExamChoosePage()),
          );
        },
        backgroundColor: Colors.blue,
        child: const CircleAvatar(
          radius: 28, // Radius to make the image fit perfectly inside the FAB
          backgroundImage: AssetImage("assets/logo/pfIcon.png"),
          backgroundColor:
              Colors.transparent, // Makes sure the background is transparent
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
