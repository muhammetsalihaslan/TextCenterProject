import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';

class ServicesWidget extends StatelessWidget {
  final List<String> services;
  const ServicesWidget({super.key, required this.services});

  void navigateToExamPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ExamChoosePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğine göre crossAxisCount değerini belirleyin
    int crossAxisCount = (services.length / 2) as int;
    if (MediaQuery.of(context).size.width <= 800) {
      crossAxisCount = 3;
    }
    if (MediaQuery.of(context).size.width <= 500) {
      crossAxisCount = 2;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: 400, // Boyutunu burada belirtebilirsiniz
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 3 / 2,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () => navigateToExamPage(context),
                child: Card(
                  elevation: 4,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        services[index],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
