// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const DropdownMenuExample());
// }

// class DropdownMenuExample extends StatefulWidget {
//   const DropdownMenuExample({super.key});

//   @override
//   State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
// }

// class _DropdownMenuExampleState extends State<DropdownMenuExample> {
//   final TextEditingController colorController = TextEditingController();
//   final TextEditingController iconController = TextEditingController();
//   ColorLabel? selectedColor;
//   IconLabel? selectedIcon;

//   List<ColorLabel> colorLabels = [];
//   List<IconLabel> iconLabels = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchFirestoreData();
//   }

//   Future<void> fetchFirestoreData() async {
//     // Colors collection'dan verileri çek
//     var colorSnapshot =
//         await FirebaseFirestore.instance.collection('colors').get();
//     var iconSnapshot =
//         await FirebaseFirestore.instance.collection('icons').get();

//     setState(() {
//       colorLabels = colorSnapshot.docs.map((doc) {
//         return ColorLabel(doc['label'], Color(int.parse(doc['color'])));
//       }).toList();

//       iconLabels = iconSnapshot.docs.map((doc) {
//         return IconLabel(
//             doc['label'], IconData(doc['icon'], fontFamily: 'MaterialIcons'));
//       }).toList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         useMaterial3: true,
//         colorSchemeSeed: Colors.green,
//       ),
//       home: Scaffold(
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     if (colorLabels.isNotEmpty)
//                       DropdownMenu<ColorLabel>(
//                         initialSelection: colorLabels.first,
//                         controller: colorController,
//                         requestFocusOnTap: true,
//                         label: const Text('Color'),
//                         onSelected: (ColorLabel? color) {
//                           setState(() {
//                             selectedColor = color;
//                           });
//                         },
//                         dropdownMenuEntries: colorLabels
//                             .map<DropdownMenuEntry<ColorLabel>>(
//                                 (ColorLabel color) {
//                           return DropdownMenuEntry<ColorLabel>(
//                             value: color,
//                             label: color.label,
//                             style: MenuItemButton.styleFrom(
//                               foregroundColor: color.color,
//                             ),
//                           );
//                         }).toList(),
//                       )
//                     else
//                       CircularProgressIndicator(),
//                     const SizedBox(width: 24),
//                     if (iconLabels.isNotEmpty)
//                       DropdownMenu<IconLabel>(
//                         controller: iconController,
//                         enableFilter: true,
//                         requestFocusOnTap: true,
//                         leadingIcon: const Icon(Icons.search),
//                         label: const Text('Icon'),
//                         inputDecorationTheme: const InputDecorationTheme(
//                           filled: true,
//                           contentPadding: EdgeInsets.symmetric(vertical: 5.0),
//                         ),
//                         onSelected: (IconLabel? icon) {
//                           setState(() {
//                             selectedIcon = icon;
//                           });
//                         },
//                         dropdownMenuEntries: iconLabels
//                             .map<DropdownMenuEntry<IconLabel>>(
//                                 (IconLabel icon) {
//                           return DropdownMenuEntry<IconLabel>(
//                             value: icon,
//                             label: icon.label,
//                             leadingIcon: Icon(icon.icon),
//                           );
//                         }).toList(),
//                       )
//                     else
//                       CircularProgressIndicator(),
//                   ],
//                 ),
//               ),
//               if (selectedColor != null && selectedIcon != null)
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                         'You selected a ${selectedColor?.label} ${selectedIcon?.label}'),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 5),
//                       child: Icon(
//                         selectedIcon?.icon,
//                         color: selectedColor?.color,
//                       ),
//                     )
//                   ],
//                 )
//               else
//                 const Text('Please select a color and an icon.')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ColorLabel {
//   const ColorLabel(this.label, this.color);
//   final String label;
//   final Color color;
// }

// class IconLabel {
//   const IconLabel(this.label, this.icon);
//   final String label;
//   final IconData icon;
// }
