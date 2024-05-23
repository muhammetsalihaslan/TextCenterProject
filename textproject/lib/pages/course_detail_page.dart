import 'package:flutter/material.dart';
import 'package:textproject/pages/meine_buchung_page.dart';

class CourseDetailsPage extends StatelessWidget {
  final Map<String, dynamic> course;

  const CourseDetailsPage({required this.course, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kursdetails'),
      ),
      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.info, color: Colors.white),
                          SizedBox(width: 8.0),
                          Text('Kursdetails',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0)),
                        ],
                      ),
                      const SizedBox(height: 16.0),
                      buildDetailRow('Kurstitle', course['Kurstitle']),
                      buildDetailRow('Zusatzleistung',
                          'Postversand - Zertifikate / Ergebnisbogen'),
                      buildDetailRow('Zeitraum', course['Zeitraum']),
                      buildDetailRow('Status', 'laufender Kurs',
                          icon: Icons.check_circle),
                      buildDetailRow('Kategorie', course['Kategorie']),
                      buildDetailRow('Sprachniveau', 'A1'),
                      buildDetailRow('Freie Plätze', '', icon: Icons.person),
                      buildDetailRow('Preis', course['Preis']),
                      const SizedBox(height: 16.0),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                            minimumSize: const Size(150, 40),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MeineBuchungPage(
                                  bookingDetails: course,
                                ),
                              ),
                            );
                          },
                          child: const Text('Jetzt buchen'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String value, {IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          if (icon != null) ...[
            Row(
              children: [
                Text(
                  value,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(width: 4.0),
                Icon(icon, color: Colors.white),
              ],
            )
          ] else ...[
            Text(
              value,
              style: const TextStyle(color: Colors.white),
            ),
          ]
        ],
      ),
    );
  }
}
