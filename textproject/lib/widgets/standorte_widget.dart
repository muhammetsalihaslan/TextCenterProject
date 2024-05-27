import 'package:flutter/material.dart';

class StandorteWidget extends StatelessWidget {
  final List<Map<String, String>> standorte;

  const StandorteWidget({super.key, required this.standorte});

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğine göre crossAxisCount değerini belirleyin
    int crossAxisCount = 3;
    if (MediaQuery.of(context).size.width <= 1040) {
      crossAxisCount = 2;
    }
    if (MediaQuery.of(context).size.width <= 700) {
      crossAxisCount = 1;
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate the number of rows required
          final int numRows = (standorte.length / crossAxisCount).ceil();
          // Calculate the height of each grid item
          final double itemHeight =
              constraints.maxWidth / crossAxisCount * (2 / 3);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Standorte',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: itemHeight * numRows +
                    (numRows - 1) * 16, // Dynamic height based on grid items
                child: GridView.builder(
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable scrolling
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 3 / 2,
                  ),
                  itemCount: standorte.length,
                  itemBuilder: (context, index) {
                    final standort = standorte[index];
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(color: Colors.blue, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              standort['title']!,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              standort['address']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              standort['phone']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              standort['email']!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              standort['website']!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
