// import 'package:flutter/material.dart';

// class HomePartBody extends StatefulWidget {
//   const HomePartBody({super.key});

//   @override
//   State<HomePartBody> createState() => _HomePartBodyState();
// }

// class _HomePartBodyState extends State<HomePartBody> {
//   final List<String> services = [
//     'Web Tasarımı',
//     'Mobil Uygulama Geliştirme',
//     'Dijital Pazarlama',
//     'Danışmanlık Hizmetleri',
//     'SEO Optimizasyonu',
//     'Veri Analitiği',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text(
//             'Über Uns',
//             style: TextStyle(
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(height: 10),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               'Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır. Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır. Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır. Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.',
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Text(
//               'Hizmetlerimiz',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Container(
//             height: 150,
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: services.length,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Card(
//                     elevation: 4,
//                     child: Container(
//                       width: 120,
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             services[index],
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Information Page',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Ana Sayfa'),
//         ),
//         body: HomePartBody(),
//       ),
//     );
//   }
// }
