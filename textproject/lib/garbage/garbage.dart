// import 'package:flutter/material.dart';

// class SearchFilter extends StatefulWidget {
//   final List<String> kurstitles;
//   final List<String> kursorts;
//   final List<String> kategorien;
//   final List<String> sprachniveaus;
//   final void Function(Map<String, String?> filter) onFilterChanged;

//   const SearchFilter({
//     required this.kurstitles,
//     required this.kursorts,
//     required this.kategorien,
//     required this.sprachniveaus,
//     required this.onFilterChanged,
//     super.key,
//   });

//   @override
//   State<SearchFilter> createState() => _SearchFilterState();
// }

// class _SearchFilterState extends State<SearchFilter> {
//   final TextEditingController _kurstitleController = TextEditingController();
//   String? _selectedKursort;
//   String? _selectedKategorie;
//   String? _selectedSprachniveau;

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double containerWidth =
//         screenWidth > 800 ? screenWidth * 3 / 4 : screenWidth;

//     return Center(
//       child: Container(
//         width: containerWidth,
//         color: Colors.lightBlueAccent,
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Row(
//               children: [
//                 Icon(Icons.search, color: Colors.blue),
//                 SizedBox(width: 8),
//                 Text(
//                   "Suchfilter",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               'Nutzen Sie die Suchfilter, um bestimmte Kurse schneller und einfacher zu finden.',
//               style: TextStyle(color: Colors.black),
//             ),
//             const SizedBox(height: 16),
//             screenWidth > 800
//                 ? Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: _buildDropdown('Kurstitle', widget.kurstitles),
//                       ),
//                       const SizedBox(width: 16),
//                       Expanded(
//                         child: _buildDropdown('Kursort', widget.kursorts),
//                       ),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       _buildTextField('Kurstitle', _kurstitleController),
//                       const SizedBox(height: 16),
//                       _buildDropdown('Kategorie', widget.kategorien),
//                     ],
//                   ),
//             const SizedBox(height: 16),
//             screenWidth > 800
//                 ? Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: _buildDropdown('Kategorie', widget.kategorien),
//                       ),
//                       const SizedBox(width: 16),
//                       Expanded(
//                         child: _buildDropdown(
//                             'Sprachniveau', widget.sprachniveaus),
//                       ),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       _buildDropdown('Kursort', widget.kursorts),
//                       const SizedBox(height: 16),
//                       _buildDropdown('Sprachniveau', widget.sprachniveaus),
//                     ],
//                   ),
//             const SizedBox(height: 16),
//             Align(
//               alignment: Alignment.center,
//               child: SizedBox(
//                 width: 520,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     widget.onFilterChanged({
//                       'Kurstitle': _kurstitleController.text,
//                       'Kursort': _selectedKursort,
//                       'Kategorie': _selectedKategorie,
//                       'Sprachniveau': _selectedSprachniveau,
//                     });
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     shape: const RoundedRectangleBorder(
//                       borderRadius: BorderRadius.zero,
//                     ),
//                   ),
//                   child: const Text(
//                     "Kurse finden",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDropdown(String label, List<String> items) {
//     return DropdownButtonFormField<String>(
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//       items: items.map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       onChanged: (value) {
//         setState(() {
//           switch (label) {
//             case 'Kurstitle':
//               _kurstitleController.text = value!;
//               break;
//             case 'Kursort':
//               _selectedKursort = value;
//               break;
//             case 'Kategorie':
//               _selectedKategorie = value;
//               break;
//             case 'Sprachniveau':
//               _selectedSprachniveau = value;
//               break;
//           }
//         });
//       },
//       dropdownColor: Colors.white,
//       isExpanded: true,
//     );
//   }

//   Widget _buildTextField(String label, TextEditingController controller) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         labelText: label,
//         border: const OutlineInputBorder(),
//       ),
//     );
//   }
// }
