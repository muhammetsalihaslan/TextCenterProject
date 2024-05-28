import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // Ekran genişliğini ve yüksekliğini almak için MediaQuery kullanın
    double screenCFWidth = MediaQuery.of(context).size.width;
    double screenCFHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFF003969), // Arka plan rengi
      padding: EdgeInsets.symmetric(
          vertical: screenCFWidth * 0.01, horizontal: screenCFWidth * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PrüfungsCenter",
                style: TextStyle(
                  fontSize: screenCFWidth > 1000
                      ? screenCFWidth * 0.03
                      : screenCFWidth *
                          0.05, // Ekran genişliğine göre dinamik yazı boyutu
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFA6B0BA),
                ),
              ),
              Row(
                children: [
                  Text(
                    'eine Marke des ',
                    style: TextStyle(
                      fontSize: screenCFWidth > 1000
                          ? screenCFWidth * 0.01
                          : screenCFWidth *
                              0.01, // Ekran genişliğine göre dinamik yazı boyutu
                      color: const Color(0xFFA6B0BA),
                    ),
                  ),
                  GestureDetector(
                    onTap: _onLinkTap,
                    child: Text(
                      'Avicenna Institut e. V.',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: _onLinkTap,
                    child: Text(
                      'IMPRESSUM',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _onLinkTap,
                    child: Text(
                      'DATENSCHUNTZ',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _onLinkTap,
                    child: Text(
                      'Allgemeine Geschäftsbedingungen',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: screenCFHeight * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.lightBlueAccent,
                      size: screenCFWidth > 1000
                          ? screenCFWidth * 0.01
                          : screenCFWidth * 0.02,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '+90 555 555 55 55',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Bilgiler arasına boşluk ekleyin
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.lightBlueAccent,
                      size: screenCFWidth > 1000
                          ? screenCFWidth * 0.01
                          : screenCFWidth * 0.02,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'info@example.com',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10), // Bilgiler arasına boşluk ekleyin
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.lightBlueAccent,
                      size: screenCFWidth > 1000
                          ? screenCFWidth * 0.01
                          : screenCFWidth * 0.02,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '1234 Example St, City, Country',
                      style: TextStyle(
                        fontSize: screenCFWidth > 1000
                            ? screenCFWidth * 0.01
                            : screenCFWidth *
                                0.02, // Ekran genişliğine göre dinamik yazı boyutu
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: screenCFHeight * 0.05),
            child: screenCFWidth > 650
                ? const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.ccVisa, // Visa kart ikonu
                        size: 50.0,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        FontAwesomeIcons.ccMastercard, // Mastercard ikonu
                        size: 50.0,
                        color: Colors.red,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        FontAwesomeIcons.paypal, // PayPal ikonu
                        size: 50.0,
                        color: Colors.blueAccent,
                      ),
                    ],
                  )
                : const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.ccVisa, // Visa kart ikonu
                        size: 30.0,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 2),
                      Icon(
                        FontAwesomeIcons.ccMastercard, // Mastercard ikonu
                        size: 30.0,
                        color: Colors.red,
                      ),
                      SizedBox(height: 2),
                      Icon(
                        FontAwesomeIcons.paypal, // PayPal ikonu
                        size: 30.0,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
          )
        ],
      ),
    );
  }

  void _onLinkTap() {
    // Bu işlev, tıklama durumunda yapılacak işlemleri içerir
  }
}
