import 'package:flutter/material.dart';
import 'package:textproject/pages/exam_page.dart';
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
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.Biz XYZ Şirketi olarak 2005 yılından beri müşterilerimize en iyi hizmeti sunmak için çalışıyoruz. Misyonumuz, yenilikçi çözümlerle müşterilerimizin beklentilerini aşmaktır. Vizyonumuz ise, alanımızda lider ve güvenilir bir marka olmaktır.',
            style: TextStyle(fontSize: 16),
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
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          height: 150,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            itemBuilder: (context, index) {
              return MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () => navigateToExamPage(context),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 4,
                      child: SizedBox(
                        width: 120,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              services[index],
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
