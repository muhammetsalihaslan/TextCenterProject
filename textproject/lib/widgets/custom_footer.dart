import 'package:flutter/material.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF002D62),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prüfungscneter',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      'eine Marke des Avicenna Institut e. V.',
                      style: TextStyle(color: Colors.white),
                    ),
                    Divider(color: Colors.white),
                    Text(
                      'Impressum',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      'Datenschutz',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(
                      'Allgemeine Geschäftsbedingungen',
                      style: TextStyle(color: Colors.blue),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.credit_card, color: Colors.white),
                        SizedBox(width: 5.0),
                        Icon(Icons.credit_card, color: Colors.white),
                        SizedBox(width: 5.0),
                        Icon(Icons.credit_card, color: Colors.white),
                        SizedBox(width: 5.0),
                        Icon(Icons.credit_card, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Unsere Kooperationspartner',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    _buildPartnerRow(
                        'Mainz', 'Akademisches Bildungs-Center e.V.'),
                    _buildPartnerRow('Homburg', 'Prisma e. V.'),
                    _buildPartnerRow(
                        'Kaiserslautern', 'Akademisches Bildungszentrum e.V.'),
                    _buildPartnerRow(
                        'Ludwigshafen', 'Lernzirkel Ludwigshafen e.V.'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 28.0), // Padding to align with other columns
                    _buildPartnerRow(
                        'Hanau', 'Brüder Grimm Bildungszentrum e.V.'),
                    _buildPartnerRow('Friedberg', 'LernPoint e. V.'),
                    _buildPartnerRow(
                        'Kassel', 'Akademische Bildungsplattform e.V.'),
                    _buildPartnerRow(
                        'Wiesbaden', 'Delphin Nachhilfe und Sprachkurse e.V.'),
                  ],
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              '2021 © Alle Rechte vorbehalten',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPartnerRow(String city, String partner) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: RichText(
        text: TextSpan(
          text: '$city: ',
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          children: [
            TextSpan(
              text: partner,
              style: const TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
