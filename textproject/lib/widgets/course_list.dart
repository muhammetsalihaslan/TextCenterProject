import 'package:flutter/material.dart';
import 'package:textproject/pages/course_detail_page.dart';

class CourseList extends StatefulWidget {
  final List<Map<String, dynamic>> courses;

  const CourseList({required this.courses, super.key});

  @override
  CourseListState createState() => CourseListState();
}

class CourseListState extends State<CourseList> {
  int currentPage = 0;
  static const int itemsPerPage = 10;

  List<Map<String, dynamic>> get paginatedCourses {
    int start = currentPage * itemsPerPage;
    int end = start + itemsPerPage;
    end = end > widget.courses.length ? widget.courses.length : end;
    return widget.courses.sublist(start, end);
  }

  void nextPage() {
    setState(() {
      if ((currentPage + 1) * itemsPerPage < widget.courses.length) {
        currentPage++;
      }
    });
  }

  void previousPage() {
    setState(() {
      if (currentPage > 0) {
        currentPage--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        children: [
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 1000) {
                  // Render DataTable for larger screens
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 20.0,
                      dataRowMinHeight: 45.0,
                      columns: const [
                        DataColumn(label: Text('KursID')),
                        DataColumn(label: Text('Kurstitel')),
                        DataColumn(label: Text('Sprachniveau')),
                        DataColumn(label: Text('Kategorie')),
                        DataColumn(label: Text('Kursort')),
                        DataColumn(label: Text('Status')),
                        DataColumn(label: Text('Freie Plätze')),
                        DataColumn(label: Text('Zeitraum')),
                        DataColumn(label: Text('Anmeldung bis')),
                        DataColumn(label: Text('Preis')),
                        DataColumn(label: Text('Details')),
                      ],
                      rows: paginatedCourses.map((course) {
                        return DataRow(
                          cells: [
                            DataCell(Text(course['KursID'] ?? '')),
                            DataCell(Text(course['Kurstitel'] ?? '')),
                            DataCell(Text(course['Sprachniveau'] ?? '')),
                            DataCell(Text(course['Kategorie'] ?? '')),
                            DataCell(Text(course['Kursort'] ?? '')),
                            DataCell(Text(course['Status'] ?? '')),
                            DataCell(Text(course['Freie Plätze'] ?? '')),
                            DataCell(Text(course['Zeitraum'] ?? '')),
                            DataCell(Text(course['Anmeldung bis'] ?? '')),
                            DataCell(Text(course['Preis'] ?? '')),
                            DataCell(ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        CourseDetailsPage(course: course),
                                  ),
                                );
                              },
                              child: const Text('Details'),
                            )),
                          ],
                        );
                      }).toList(),
                    ),
                  );
                } else {
                  // Render Cards for smaller screens
                  return ListView.builder(
                    itemCount: paginatedCourses.length,
                    itemBuilder: (context, index) {
                      final course = paginatedCourses[index];
                      return Card(
                        margin: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Kursnr. ${course['#']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(height: 8.0),
                              Text(course['Kurstitel'] ?? '',
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
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CourseDetailsPage(course: course),
                                    ),
                                  );
                                },
                                child: const Text('Details'),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: previousPage,
                child: const Text('Önceki'),
              ),
              Text('Sayfa ${currentPage + 1}'),
              ElevatedButton(
                onPressed: nextPage,
                child: const Text('Sonraki'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
