// import 'package:flutter/material.dart';

// class CourseTable extends StatefulWidget {
//   const CourseTable({super.key});

//   @override
//   State<CourseTable> createState() => _CourseTableState();
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

//   late List<Map<String, dynamic>> filteredCourses;

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
//       children: [Widget],

//     );
//   }
// }
