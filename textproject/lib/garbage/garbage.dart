// import 'package:flutter/material.dart';
// import 'dart:async';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Standorte Widget',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Standorte'),
//         ),
//         body: StandorteWidget(),
//       ),
//     );
//   }
// }

// class StandorteWidget extends StatefulWidget {
//   @override
//   _StandorteWidgetState createState() => _StandorteWidgetState();
// }

// class _StandorteWidgetState extends State<StandorteWidget> {
//   PageController? _pageController;
//   late Timer _timer;

//   final List<Map<String, String>> standorte = [
//     {
//       'title': 'Akademisches Bildungszentrum',
//       'address': 'Rummelstr. 15, 67655 Kaiserslautern',
//       'phone': '+49 631 414 53 37',
//       'email': 'info[at]a-bz.de',
//       'website': 'www.a-bz.de',
//     },
//     {
//       'title': 'Prisma Lernzentrum',
//       'address': 'Talstr. 36, 66424 Homburg',
//       'phone': '+49 6841 9937398',
//       'email': 'prisma-info[at]web.de',
//       'website': 'www.prisma-lernzentrum.de',
//     },
//     {
//       'title': 'Lernzirkel Ludwigshafen',
//       'address': 'Ludwigsplatz 9a, 67059 Ludwigshafen',
//       'phone': '+49 621 30737271',
//       'email': 'info[at]lernzirkel-online.de',
//       'website': 'https://lernzirkel-online.de/',
//     },
//     // Ek standorte verileri burada eklenebilir.
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController();
//     _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
//       if (_pageController!.page == standorte.length - 1) {
//         _pageController!.animateToPage(0,
//             duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
//       } else {
//         _pageController!.nextPage(
//             duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     _pageController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Standorte',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 10),
//           Expanded(
//             child: Stack(
//               children: [
//                 PageView.builder(
//                   controller: _pageController,
//                   itemCount: standorte.length,
//                   itemBuilder: (context, index) {
//                     final standort = standorte[index];
//                     return Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                       child: Card(
//                         elevation: 4,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                           side: const BorderSide(color: Colors.blue, width: 1),
//                         ),
//                         child: Container(
//                           padding: const EdgeInsets.all(16),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 standort['title']!,
//                                 style: const TextStyle(
//                                   fontSize: 18,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 standort['address']!,
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey[600],
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 standort['phone']!,
//                                 style: TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.grey[600],
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 standort['email']!,
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                               const SizedBox(height: 8),
//                               Text(
//                                 standort['website']!,
//                                 style: const TextStyle(
//                                   fontSize: 14,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                               const Spacer(),
//                               ElevatedButton(
//                                 onPressed: () {
//                                   // Implement navigation or other action here
//                                 },
//                                 child: const Text('Standort wählen'),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 Positioned(
//                   left: 0,
//                   top: 0,
//                   bottom: 0,
//                   child: IconButton(
//                     icon: const Icon(Icons.arrow_back),
//                     onPressed: () {
//                       _pageController?.previousPage(
//                           duration: const Duration(milliseconds: 400),
//                           curve: Curves.easeInOut);
//                     },
//                   ),
//                 ),
//                 Positioned(
//                   right: 0,
//                   top: 0,
//                   bottom: 0,
//                   child: IconButton(
//                     icon: const Icon(Icons.arrow_forward),
//                     onPressed: () {
//                       _pageController?.nextPage(
//                           duration: const Duration(milliseconds: 400),
//                           curve: Curves.easeInOut);
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
