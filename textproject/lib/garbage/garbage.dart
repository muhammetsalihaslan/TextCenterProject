// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Slider Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Slider Example'),
//       ),
//       body: const SliderExample(),
//     );
//   }
// }

// class SliderExample extends StatefulWidget {
//   const SliderExample({super.key});

//   @override
//   _SliderExampleState createState() => _SliderExampleState();
// }

// class _SliderExampleState extends State<SliderExample> {
//   final PageController _pageController = PageController();

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           child: PageView(
//             controller: _pageController,
//             children: <Widget>[
//               _buildPage('assets/images/slide1.png', 'Slide 1'),
//               _buildPage('assets/images/slide2.png', 'Slide 2'),
//               _buildPage('assets/images/slide3.png', 'Slide 3'),
//             ],
//           ),
//         ),
//         _buildPageIndicator(),
//       ],
//     );
//   }

//   Widget _buildPage(String imagePath, String title) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           imagePath,
//           width: double.infinity,
//           height: 300,
//           fit: BoxFit.cover,
//         ),
//         const SizedBox(height: 20),
//         Text(
//           title,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }

//   Widget _buildPageIndicator() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         _indicator(0),
//         _indicator(1),
//         _indicator(2),
//       ],
//     );
//   }

//   Widget _indicator(int index) {
//     return AnimatedBuilder(
//       animation: _pageController,
//       builder: (context, child) {
//         double selectedness = Curves.easeOut.transform(
//           max(
//             0.0,
//             1.0 -
//                 (_pageController.page ?? _pageController.initialPage - index)
//                     .abs(),
//           ),
//         );
//         return Container(
//           margin: const EdgeInsets.all(4.0),
//           width: 12.0 + (selectedness * 8.0),
//           height: 12.0,
//           decoration: BoxDecoration(
//             color: Colors.blue,
//             borderRadius: BorderRadius.circular(12.0),
//           ),
//         );
//       },
//     );
//   }
// }
