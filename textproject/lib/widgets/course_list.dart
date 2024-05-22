import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final List<Map<String, dynamic>> courses;

  const CourseList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000) {
          // Render DataTable for larger screens
          return Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('#')),
                  DataColumn(label: Text('Kurstitle')),
                  DataColumn(label: Text('Status')),
                  DataColumn(label: Text('Kategorie')),
                  DataColumn(label: Text('Kursort')),
                  DataColumn(label: Text('Zeitraum')),
                  DataColumn(label: Text('Freie Plätze')),
                  DataColumn(label: Text('Preis')),
                  DataColumn(label: Text('Anmeldung bis')),
                  DataColumn(label: Text('Details')),
                ],
                rows: courses.map((course) {
                  return DataRow(
                    cells: [
                      DataCell(Text(course['#'] ?? '')),
                      DataCell(Text(course['Kurstitle'] ?? '')),
                      DataCell(Text(course['Status'] ?? '')),
                      DataCell(Text(course['Kategorie'] ?? '')),
                      DataCell(Text(course['Kursort'] ?? '')),
                      DataCell(Text(course['Zeitraum'] ?? '')),
                      DataCell(Text(course['Freie Plätze'] ?? '')),
                      DataCell(Text(course['Preis'] ?? '')),
                      DataCell(Text(course['Anmeldung bis'] ?? '')),
                      DataCell(ElevatedButton(
                        onPressed: () {},
                        child: const Text('Details'),
                      )),
                    ],
                  );
                }).toList(),
              ),
            ),
          );
        } else {
          // Render Cards for smaller screens
          return Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Kursnr. ${course['#']}',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8.0),
                        Text(course['Kurstitle'] ?? '',
                            style: const TextStyle(
                                fontSize: 18.0, color: Colors.blue)),
                        const SizedBox(height: 8.0),
                        Text('Status: ${course['Status']}'),
                        Text('Kategorie: ${course['Kategorie']}'),
                        Text('Kursort: ${course['Kursort']}'),
                        Text('Zeitraum: ${course['Zeitraum']}'),
                        Text('Freie Plätze: ${course['Freie Plätze']}'),
                        Text('Preis: ${course['Preis']}'),
                        Text('Anmeldung bis: ${course['Anmeldung bis']}'),
                        const SizedBox(height: 8.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Details'),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
