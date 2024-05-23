import 'package:flutter/material.dart';

class CourseDetailsPage extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseDetailsPage({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kursnr: ${course['#']}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8.0),
            Text('Kurstitle: ${course['Kurstitle']}',
                style: const TextStyle(fontSize: 18.0, color: Colors.blue)),
            const SizedBox(height: 8.0),
            Text('Status: ${course['Status']}'),
            Text('Kategorie: ${course['Kategorie']}'),
            Text('Kursort: ${course['Kursort']}'),
            Text('Zeitraum: ${course['Zeitraum']}'),
            Text('Freie Plätze: ${course['Freie Plätze']}'),
            Text('Preis: ${course['Preis']}'),
            Text('Anmeldung bis: ${course['Anmeldung bis']}'),
          ],
        ),
      ),
    );
  }
}
