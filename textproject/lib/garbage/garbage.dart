// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:textproject/pages/course_detail_page.dart';

// class CourseList extends StatefulWidget {
//   final List<Map<String, dynamic>> courses;

//   const CourseList({required this.courses, super.key});

//   @override
//   CourseListState createState() => CourseListState();
// }

// class CourseListState extends State<CourseList> {
//   int currentPage = 0;
//   static const int itemsPerPage = 10;
//   final DateFormat dateFormat = DateFormat('dd.MM.yyyy');

//   List<Map<String, dynamic>> get paginatedCourses {
//     int start = currentPage * itemsPerPage;
//     int end = start + itemsPerPage;
//     end = end > widget.courses.length ? widget.courses.length : end;
//     return widget.courses.sublist(start, end);
//   }

//   void nextPage() {
//     setState(() {
//       if ((currentPage + 1) * itemsPerPage < widget.courses.length) {
//         currentPage++;
//       }
//     });
//   }

//   void previousPage() {
//     setState(() {
//       if (currentPage > 0) {
//         currentPage--;
//       }
//     });
//   }

//   String truncateText(String text, int maxLength) {
//     if (text.length > maxLength) {
//       return '${text.substring(0, maxLength)}...';
//     } else {
//       return text;
//     }
//   }

//   bool isApplicationDeadlinePassed(String applicationDeadline) {
//     try {
//       final deadline = dateFormat.parse(applicationDeadline);
//       return DateTime.now().isAfter(deadline);
//     } catch (e) {
//       return false;
//     }
//   }

//   Color getFreiePlaetzeColor(int freiePlaetze) {
//     if (freiePlaetze == 0) {
//       return Colors.red;
//     } else if (freiePlaetze < 5) {
//       return Colors.yellow;
//     } else {
//       return Colors.green;
//     }
//   }

//   Icon getFreiePlaetzeIcon(int freiePlaetze) {
//     Color color = getFreiePlaetzeColor(freiePlaetze);
//     return Icon(Icons.person, color: color);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: LayoutBuilder(
//             builder: (context, constraints) {
//               if (constraints.maxWidth > 800) {
//                 // Render DataTable for larger screens
//                 return SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: DataTable(
//                     columnSpacing: 25.0,
//                     dataRowMinHeight: 45.0,
//                     columns: [
//                       DataColumn(label: buildTextColumn('KursID')),
//                       DataColumn(label: buildTextColumn('Kurstitel')),
//                       DataColumn(label: buildTextColumn('Sprachniveau')),
//                       DataColumn(label: buildTextColumn('Kategorie')),
//                       DataColumn(label: buildTextColumn('Kursort')),
//                       DataColumn(label: buildTextColumn('Status')),
//                       DataColumn(label: buildTextColumn('Freie Plätze')),
//                       DataColumn(label: buildTextColumn('Zeitraum')),
//                       DataColumn(label: buildTextColumn('Anmeldung bis')),
//                       DataColumn(label: buildTextColumn('Preis')),
//                       DataColumn(label: buildTextColumn('Details')),
//                     ],
//                     rows: paginatedCourses.map((course) {
//                       bool isDeadlinePassed =
//                           isApplicationDeadlinePassed(course['Anmeldung bis']);
//                       int freiePlaetze =
//                           int.tryParse(course['Freie Plätze'].toString()) ?? 0;
//                       bool shouldShowCloseIcon =
//                           isDeadlinePassed || freiePlaetze == 0;

//                       return DataRow(
//                         cells: [
//                           DataCell(buildDataCell(course['KursID'], 10)),
//                           DataCell(buildDataCell(course['Kurstitel'], 12)),
//                           DataCell(buildDataCell(course['Sprachniveau'], 5)),
//                           DataCell(buildDataCell(course['Kategorie'], 12)),
//                           DataCell(buildDataCell(course['Kursort'], 18)),
//                           DataCell(
//                             Icon(
//                               shouldShowCloseIcon ? Icons.close : Icons.check,
//                               color: shouldShowCloseIcon
//                                   ? Colors.red
//                                   : Colors.green,
//                             ),
//                           ),
//                           DataCell(Row(
//                             children: [
//                               getFreiePlaetzeIcon(freiePlaetze),
//                               const SizedBox(width: 5),
//                               buildDataCell(freiePlaetze.toString(), 5),
//                             ],
//                           )),
//                           DataCell(buildDataCell(course['Zeitraum'], 12)),
//                           DataCell(buildDataCell(course['Anmeldung bis'], 12)),
//                           DataCell(buildDataCell('${course['Preis']} ', 10)),
//                           DataCell(ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: const Color(0xFF003969),
//                             ),
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) =>
//                                       CourseDetailsPage(course: course),
//                                 ),
//                               );
//                             },
//                             child: const Text(
//                               'Details',
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           )),
//                         ],
//                       );
//                     }).toList(),
//                   ),
//                 );
//               } else {
//                 // Render GridView for smaller screens
//                 return GridView.builder(
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount:
//                         MediaQuery.of(context).size.width <= 500 ? 1 : 2,
//                     mainAxisSpacing: 16,
//                     crossAxisSpacing: 16,
//                     childAspectRatio: 2,
//                   ),
//                   itemCount: paginatedCourses.length,
//                   itemBuilder: (context, index) {
//                     final course = paginatedCourses[index];
//                     bool isDeadlinePassed =
//                         isApplicationDeadlinePassed(course['Anmeldung bis']);
//                     int freiePlaetze =
//                         int.tryParse(course['Freie Plätze'].toString()) ?? 0;
//                     bool shouldShowCloseIcon =
//                         isDeadlinePassed || freiePlaetze == 0;

//                     return Card(
//                       margin: const EdgeInsets.all(8.0),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('Kursnr. ${course['KursID']}',
//                                 style: const TextStyle(
//                                     fontWeight: FontWeight.bold)),
//                             const SizedBox(height: 8.0),
//                             Text(course['Kurstitel'] ?? '',
//                                 style: const TextStyle(
//                                     fontSize: 18.0, color: Colors.blue)),
//                             const SizedBox(height: 8.0),
//                             Text('Status: ${course['Status']}'),
//                             Text('Kategorie: ${course['Kategorie']}'),
//                             Text('Kursort: ${course['Kursort']}'),
//                             Text('Zeitraum: ${course['Zeitraum']}'),
//                             Text('Freie Plätze: ${course['Freie Plätze']}'),
//                             Text('Preis: ${course['Preis']}'),
//                             Text('Anmeldung bis: ${course['Anmeldung bis']}'),
//                             const SizedBox(height: 8.0),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) =>
//                                         CourseDetailsPage(course: course),
//                                   ),
//                                 );
//                               },
//                               child: const Text('Details'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               }
//             },
//           ),
//         ),
//         if (widget.courses.length > itemsPerPage)
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               ElevatedButton(
//                 onPressed: previousPage,
//                 child: const Text('Önceki'),
//               ),
//               Text('Sayfa ${currentPage + 1}'),
//               ElevatedButton(
//                 onPressed: nextPage,
//                 child: const Text('Sonraki'),
//               ),
//             ],
//           ),
//       ],
//     );
//   }

//   Widget buildTextColumn(String text) {
//     return Center(
//       child: Text(
//         text,
//         style: const TextStyle(
//           fontSize: 14.0,
//           color: Color(0xFF003969),
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }

//   Widget buildDataCell(String data, int maxLength) {
//     String truncatedData = truncateText(data, maxLength);
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Text(
//         truncatedData,
//         style: const TextStyle(fontSize: 14.0),
//       ),
//     );
//   }
// }
