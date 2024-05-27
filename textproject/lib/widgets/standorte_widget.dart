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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Standorte',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            color: Color(0xFF003969), // Ana renk
            thickness: 2,
            indent: 16,
            endIndent: 16,
          ),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(), // Disable scrolling
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 3 / 2, // Daha kısa kartlar için
            ),
            itemCount: standorte.length,
            itemBuilder: (context, index) {
              final standort = standorte[index];
              return Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(color: Colors.transparent),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0), // Daha kompakt padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        standort['title']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Başlık rengi siyah
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Divider(
                        color: Color(0xFF003969), // Ana renk
                        thickness: 2,
                        indent: 16,
                        endIndent: 16,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        standort['address']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        standort['phone']!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        standort['email']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF003969), // Ana renk
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        standort['website']!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF003969), // Ana renk
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
