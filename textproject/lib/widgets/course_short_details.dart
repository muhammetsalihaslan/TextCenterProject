import 'package:flutter/material.dart';

class CourseShortDetailCard extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseShortDetailCard({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF003969),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.shopping_cart, color: Colors.white),
              SizedBox(width: 8),
              Text(
                'Meine Buchung',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          buildDetailRow('Kurstitel', course['Kurstitel']),
          const Divider(color: Colors.white, thickness: 2),
          const SizedBox(height: 8),
          buildDetailRow('Zeitraum', course['Zeitraum']),
          const Divider(color: Colors.white, thickness: 2),
          const SizedBox(height: 8),
          buildDetailRow('Preis', course['Preis']),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              label,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              value,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
