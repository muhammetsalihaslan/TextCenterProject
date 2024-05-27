import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';
import 'package:textproject/widgets/services_widget.dart';
import 'package:textproject/widgets/standorte_widget.dart';

class HomePartBody extends StatefulWidget {
  const HomePartBody({super.key});

  @override
  State<HomePartBody> createState() => _HomePartBodyState();
}

class _HomePartBodyState extends State<HomePartBody> {
  final List<String> services = [
    'Telc German A1',
    'Telc German A2',
    'Telc German B1',
    'Telc German B2',
    'Telc German C1',
    'Telc German C2',
    'Telc German BBC',
    'Telc German 12',
    'Telc German A12',
    'Telc German A85',
    'Telc German A85',
    'Telc German A85',
    'Telc German A85',
  ];

  final List<Map<String, String>> mockStandorte = [
    {
      'title': 'Akademisches Bildungszentrum',
      'address': 'Rummelstr. 15, 67655 Kaiserslautern',
      'phone': '+49 631 414 53 37',
      'email': 'info[at]a-bz.de',
      'website': 'www.a-bz.de',
    },
    {
      'title': 'Prisma Lernzentrum',
      'address': 'Talstr. 36, 66424 Homburg',
      'phone': '+49 6841 9937398',
      'email': 'prisma-info[at]web.de',
      'website': 'www.prisma-lernzentrum.de',
    },
    {
      'title': 'Lernzirkel Ludwigshafen',
      'address': 'Ludwigsplatz 9a, 67059 Ludwigshafen',
      'phone': '+49 621 30737271',
      'email': 'info[at]lernzirkel-online.de',
      'website': 'https://lernzirkel-online.de/',
    },
    {
      'title': 'Brüder Grimm Bildungszentrum',
      'address': 'Langstraße 60, 63450 Hanau',
      'phone': '+49 6181 12506',
      'email': 'info[at]bruedergrimm.net',
      'website': 'https://bruedergrimm.net/',
    },
    {
      'title': 'Mainlingua',
      'address': 'Zeil 41, 60313 Frankfurt am Main',
      'phone': '+49 6971712874',
      'email': 'info[at]mainlingua.de',
      'website': 'https://mainlingua.de/',
    },
    {
      'title': 'Akademisches Bildungs-Centrum',
      'address': 'Rhabarunstraße 5, 55118 Mainz',
      'phone': '+49 6131 385 147',
      'email': 'kontakt[at]abc-mainz.de',
      'website': 'https://www.abc-mainz.de/',
    },
    {
      'title': 'Akademische Bildungsplattform',
      'address': 'Eisenschmiede 88, 34127 Kassel',
      'phone': '+49561 890202',
      'email': 'info[at]abplattform.de',
      'website': 'https://abplattform.de/',
    },
    {
      'title': 'Delphin',
      'address': 'Schwalbacher Str. 34, 65183 Wiesbaden',
      'phone': '+49 611 3603730',
      'email': 'info[at]delphin-ev.de',
      'website': 'https://delphin-ev.de/',
    },
    {
      'title': 'LernPoint',
      'address': 'Bismarckstraße 2, 61169 Friedberg',
      'phone': '+49 6031 166914',
      'email': 'info[at]lernpoint-ev.de',
      'website': 'https://lernpoint-ev.de/',
    },
  ];

  void navigateToExamPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ExamChoosePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Uber Uns',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF343E48)),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.',
            style: TextStyle(fontSize: 16, color: Color(0xFF343E48)),
          ),
        ),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Hizmetlerimiz',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF343E48)),
          ),
        ),
        const SizedBox(height: 10),
        ServicesWidget(services: services),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: StandorteWidget(standorte: mockStandorte),
        ),
      ],
    );
  }
}
