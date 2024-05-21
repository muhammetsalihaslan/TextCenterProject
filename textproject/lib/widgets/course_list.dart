import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final List<Map<String, dynamic>> courses;

  const CourseList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
