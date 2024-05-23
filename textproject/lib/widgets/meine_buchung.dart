import 'package:flutter/material.dart';

class BucHung extends StatelessWidget {
  final Map<String, dynamic> bookingDetails;

  const BucHung({required this.bookingDetails, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 500,
          decoration: BoxDecoration(
            color: Colors.blue[900],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Colors.white),
                    SizedBox(width: 8.0),
                    Text('Meine Buchung',
                        style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  ],
                ),
                const SizedBox(height: 16.0),
                buildDetailRow('Kurstitle', bookingDetails['Kurstitle']),
                buildDetailRow('Zusatzleistung',
                    'Postversand - Zertifikate / Ergebnisbogen'),
                buildDetailRow('Zeitraum', bookingDetails['Zeitraum']),
                buildDetailRow('Preis', bookingDetails['Preis']),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
