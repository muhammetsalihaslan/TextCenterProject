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
    int crossAxisCount = (services.length / 2).floor();
    if (MediaQuery.of(context).size.width <= 800) {
      crossAxisCount = 3;
    }
    if (MediaQuery.of(context).size.width <= 500) {
      crossAxisCount = 2;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate the number of rows required
          final int numRows = (services.length / crossAxisCount).ceil();
          // Calculate the height of each grid item
          final double itemHeight =
              constraints.maxWidth / crossAxisCount * (2 / 3);

          return SizedBox(
            height: itemHeight * numRows + (numRows - 1) * 16,
            child: GridView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Disable scrolling
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
          );
        },
      ),
    );
  }
}
