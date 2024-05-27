import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF003969), // Arka plan rengi
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "PrüfungCenter",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFA6B0BA),
                ),
              ),
              Row(children: [
                Text(
                  'eine Marke des ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[300],
                  ),
                ),
                GestureDetector(
                  onTap: _onLinkTap,
                  child: const Text(
                    'Avicenna Institut e. V.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ])
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: _onLinkTap,
                child: const Text(
                  'IMPRESSUM',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _onLinkTap,
                child: const Text(
                  'DATENSCHUNTZ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              GestureDetector(
                onTap: _onLinkTap,
                child: const Text(
                  'Allgemeine Geschäftsbedingungen',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.asset(
                'assets/paytype/alltype.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8),
              Image.asset(
                'assets/paytype/sofort.png',
                width: 50,
                height: 50,
                fit: BoxFit.contain,
              ),
            ],
          )
        ],
      ),
    );
  }

  void _onLinkTap() {
    // Bu işlev, tıklama durumunda yapılacak işlemleri içerir
  }
}
