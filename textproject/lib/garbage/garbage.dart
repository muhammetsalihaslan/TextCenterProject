// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Search Filter DataTable Example'),
//         ),
//         body: CourseTable(),
//       ),
//     );
//   }
// }

// class CourseTable extends StatefulWidget {
//   @override
//   _CourseTableState createState() => _CourseTableState();
// }

// class _CourseTableState extends State<CourseTable> {
//   TextEditingController searchController = TextEditingController();
//   List<Map<String, dynamic>> courses = [
//     {
//       'id': 'PR-21-PZert',
//       'title': 'Zusatzleistung: Postversand - Zertifikate / Ergebnisbogen',
//       'status': true,
//       'category': 'PR - Prüfungen',
//       'city': '---',
//       'period': '1/1/24 — 12/31/24',
//       'places': '',
//       'fee': '€7.50',
//       'deadline': ''
//     },
//     {
//       'id': 'SP-240206-MZ-C1Int',
//       'title': 'C1 Deutsch Intensivkurs',
//       'status': true,
//       'category': 'SP - Sprachkurse',
//       'city': 'Mainz',
//       'period': '3/19/24 — 6/17/24',
//       'places': '16',
//       'fee': '€1,080.00',
//       'deadline': ''
//     },
//     {
//       'id': 'PR-240519-KS-B2',
//       'title': 'Telc Deutsch B2',
//       'status': true,
//       'category': 'PR - Prüfungen',
//       'city': 'Kassel',
//       'period': 'on 5/19/24',
//       'places': '7',
//       'fee': '€190.00',
//       'deadline': '05/02/2024'
//     }
//   ];

//   List<Map<String, dynamic>> filteredCourses;

//   @override
//   void initState() {
//     super.initState();
//     filteredCourses = courses;
//   }

//   void filterSearchResults(String query) {
//     List<Map<String, dynamic>> dummySearchList = List.from(courses);
//     if (query.isNotEmpty) {
//       List<Map<String, dynamic>> dummyListData = List.from(courses);
//       dummyListData.retainWhere((item) {
//         return item['title']
//                 .toString()
//                 .toLowerCase()
//                 .contains(query.toLowerCase()) ||
//             item['category']
//                 .toString()
//                 .toLowerCase()
//                 .contains(query.toLowerCase()) ||
//             item['city'].toString().toLowerCase().contains(query.toLowerCase());
//       });
//       setState(() {
//         filteredCourses = dummyListData;
//       });
//     } else {
//       setState(() {
//         filteredCourses = courses;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: TextField(
//             controller: searchController,
//             onChanged: filterSearchResults,
//             decoration: InputDecoration(
//               labelText: 'Search',
//               hintText: 'Search by title, category, city',
//               prefixIcon: Icon(Icons.search),
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(25.0)),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: DataTable(
//               columns: [
//                 DataColumn(label: Text('#')),
//                 DataColumn(label: Text('Title')),
//                 DataColumn(label: Text('Status')),
//                 DataColumn(label: Text('Category')),
//                 DataColumn(label: Text('Course city')),
//                 DataColumn(label: Text('Period')),
//                 DataColumn(label: Text('Free places')),
//                 DataColumn(label: Text('Fee')),
//                 DataColumn(label: Text('Registration deadline')),
//                 DataColumn(label: Text('Details')),
//               ],
//               rows: filteredCourses
//                   .map((course) => DataRow(cells: [
//                         DataCell(Text(course['id'])),
//                         DataCell(Text(course['title'])),
//                         DataCell(Icon(
//                             course['status']
//                                 ? Icons.check_circle
//                                 : Icons.cancel,
//                             color:
//                                 course['status'] ? Colors.green : Colors.red)),
//                         DataCell(Text(course['category'])),
//                         DataCell(Text(course['city'])),
//                         DataCell(Text(course['period'])),
//                         DataCell(course['places'].isEmpty
//                             ? Icon(Icons.person, color: Colors.green)
//                             : Text(course['places'])),
//                         DataCell(Text(course['fee'])),
//                         DataCell(Text(
//                           course['deadline'],
//                           style: TextStyle(
//                               color: course['deadline'].isEmpty
//                                   ? Colors.black
//                                   : Colors.red),
//                         )),
//                         DataCell(ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.blue,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.zero,
//                             ),
//                           ),
//                           child: const Text(
//                             "Details",
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         )),
//                       ]))
//                   .toList(),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
