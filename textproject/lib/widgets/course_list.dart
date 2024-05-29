import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:textproject/pages/course_detail_page.dart';

class CourseList extends StatefulWidget {
  final List<Map<String, dynamic>> courses;

  const CourseList({
    required this.courses,
    super.key,
  });

  @override
  CourseListState createState() => CourseListState();
}

class CourseListState extends State<CourseList> {
  int currentPage = 0;
  static const int itemsPerPage = 10;
  final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

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

  String truncateText(String text, int maxLength) {
    if (text.length > maxLength) {
      return '${text.substring(0, maxLength)}...';
    } else {
      return text;
    }
  }

  bool isApplicationDeadlinePassed(String applicationDeadline) {
    try {
      final deadline = dateFormat.parse(applicationDeadline);
      return DateTime.now().isAfter(deadline);
    } catch (e) {
      return false;
    }
  }

  Color getFreiePlaetzeColor(int freiePlaetze) {
    if (freiePlaetze == 0) {
      return Colors.red;
    } else if (freiePlaetze < 5) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  Icon getFreiePlaetzeIcon(int freiePlaetze) {
    Color color = getFreiePlaetzeColor(freiePlaetze);
    return Icon(Icons.person, color: color);
  }

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = MediaQuery.of(context).size.width > 1220;
    bool isWideScreen2 = MediaQuery.of(context).size.width > 1100;
    bool isWideScreen3 = MediaQuery.of(context).size.width > 990;
    bool isWideScreen4 = MediaQuery.of(context).size.width > 900;
    bool isWideScreen5 = MediaQuery.of(context).size.width > 792;
    bool isWideScreen6 = MediaQuery.of(context).size.width > 675;
    bool isWideScreen7 = MediaQuery.of(context).size.width > 570;

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: isWideScreen7 ? 25.0 : 5,
              dataRowMinHeight: 45.0,
              columns: [
                if (isWideScreen) DataColumn(label: buildTextColumn('KursID')),
                DataColumn(label: buildTextColumn('Kurstitel')),
                DataColumn(label: buildTextColumn('Sprachniveau')),
                if (isWideScreen2)
                  DataColumn(label: buildTextColumn('Kategorie')),
                DataColumn(label: buildTextColumn('Kursort')),
                DataColumn(label: buildTextColumn('Status')),
                if (isWideScreen5)
                  DataColumn(label: buildTextColumn('Freie Plätze')),
                if (isWideScreen4)
                  DataColumn(label: buildTextColumn('Zeitraum')),
                if (isWideScreen6)
                  DataColumn(label: buildTextColumn('Anmeldung bis')),
                if (isWideScreen3) DataColumn(label: buildTextColumn('Preis')),
                DataColumn(label: buildTextColumn('Details')),
              ],
              rows: paginatedCourses.map((course) {
                return DataRow(
                  cells: [
                    if (isWideScreen)
                      DataCell(buildDataCell(course['KursID'], 10)),
                    DataCell(buildDataCell(course['Kurstitel'], 12)),
                    DataCell(buildDataCell(course['Sprachniveau'], 5)),
                    if (isWideScreen2)
                      DataCell(buildDataCell(course['Kategorie'], 12)),
                    DataCell(buildDataCell(course['Kursort'], 18)),
                    DataCell(
                      Icon(
                        (isApplicationDeadlinePassed(course['Anmeldung bis']) ||
                                int.tryParse(
                                        course['Freie Plätze'].toString()) ==
                                    0)
                            ? Icons.close
                            : Icons.check,
                        color: (isApplicationDeadlinePassed(
                                    course['Anmeldung bis']) ||
                                int.tryParse(
                                        course['Freie Plätze'].toString()) ==
                                    0)
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                    if (isWideScreen5)
                      DataCell(Row(
                        children: [
                          getFreiePlaetzeIcon(
                              int.tryParse(course['Freie Plätze'].toString()) ??
                                  0),
                          const SizedBox(width: 5),
                          buildDataCell(course['Freie Plätze'].toString(), 5),
                        ],
                      )),
                    if (isWideScreen4)
                      DataCell(buildDataCell(course['Zeitraum'], 12)),
                    if (isWideScreen6)
                      DataCell(buildDataCell(course['Anmeldung bis'], 12)),
                    if (isWideScreen3)
                      DataCell(buildDataCell('${course['Preis']} ', 10)),
                    DataCell(ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003969),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CourseDetailsPage(course: course),
                          ),
                        );
                      },
                      child: const Text(
                        'Details',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
        if (widget.courses.length > itemsPerPage)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: previousPage,
                icon: const Icon(Icons.arrow_back),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Sayfa ${currentPage + 1}'),
              ),
              IconButton(
                onPressed: nextPage,
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
      ],
    );
  }

  Widget buildTextColumn(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14.0,
          color: Color(0xFF003969),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildDataCell(String data, int maxLength) {
    String truncatedData = truncateText(data, maxLength);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        truncatedData,
        style: const TextStyle(fontSize: 14.0),
      ),
    );
  }
}
