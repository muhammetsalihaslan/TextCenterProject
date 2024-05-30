import 'package:flutter/material.dart';

class CourseTimesAndLocation extends StatelessWidget {
  const CourseTimesAndLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.blue.shade900),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kurszeiten',
                  style: TextStyle(fontSize: 18, color: Colors.blue.shade900)),
              const SizedBox(height: 8),
              DataTable(
                columns: [
                  DataColumn(
                      label: Text('Wochentag',
                          style: TextStyle(color: Colors.blue.shade900))),
                  DataColumn(
                      label: Text('Uhrzeit',
                          style: TextStyle(color: Colors.blue.shade900))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Samstag',
                        style: TextStyle(color: Colors.blue.shade900))),
                    DataCell(Text('10:00',
                        style: TextStyle(color: Colors.blue.shade900))),
                  ]),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Veranstaltungsort',
                  style: TextStyle(fontSize: 18, color: Colors.blue.shade900)),
              const SizedBox(height: 8),
              Text('ABC-Mainz e. V.',
                  style: TextStyle(color: Colors.blue.shade900)),
              Text('Rabanusstraße 5',
                  style: TextStyle(color: Colors.blue.shade900)),
              Text('55118 Mainz',
                  style: TextStyle(color: Colors.blue.shade900)),
            ],
          ),
        ),
      ],
    );
  }
}
