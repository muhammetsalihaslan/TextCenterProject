// import 'package:flutter/material.dart';

// class SearchFilter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double containerWidth =
//         screenWidth > 800 ? screenWidth * 3 / 4 : screenWidth;

//     return Center(
//       child: Container(
//         width: containerWidth,
//         color: Colors.lightBlueAccent,
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Icon(Icons.search, color: Colors.blue),
//                 SizedBox(width: 8),
//                 Text(
//                   'Suchfilter',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ],
//             ),
//             SizedBox(height: 8),
//             Text(
//               'Nutzen Sie die Suchfilter, um bestimmte Kurse schneller und einfacher zu finden.',
//             ),
//             SizedBox(height: 16),
//             screenWidth > 800
//                 ? Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(child: _buildTextField('Kurstitle')),
//                       SizedBox(width: 16),
//                       Expanded(child: _buildDropdown('Kategorie')),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       _buildTextField('Kurstitle'),
//                       SizedBox(height: 16),
//                       _buildDropdown('Kategorie'),
//                     ],
//                   ),
//             SizedBox(height: 16),
//             screenWidth > 800
//                 ? Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(child: _buildDropdown('Kursort')),
//                       SizedBox(width: 16),
//                       Expanded(child: _buildDropdown('Sprachniveau')),
//                     ],
//                   )
//                 : Column(
//                     children: [
//                       _buildDropdown('Kursort'),
//                       SizedBox(height: 16),
//                       _buildDropdown('Sprachniveau'),
//                     ],
//                   ),
//             SizedBox(height: 16),
//             Align(
//               alignment: Alignment.centerRight,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text('Kurse finden'),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.blue,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(String label) {
//     return TextField(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//     );
//   }

//   Widget _buildDropdown(String label) {
//     return DropdownButtonFormField<String>(
//       decoration: InputDecoration(
//         labelText: label,
//         border: OutlineInputBorder(),
//       ),
//       items: ['--'].map((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//       onChanged: (value) {},
//     );
//   }
// }
