import 'package:flutter/material.dart';

class AlternRech extends StatelessWidget {
  const AlternRech({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.lightBlue[100],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.mail, color: Colors.blue),
                  SizedBox(width: 8.0),
                  Text(
                    'Alternativer Rechnungsempfänger',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Rechnungsempfänger',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              TextFormField(
                maxLines: 5, // Metin alanının yüksekliğini ayarlar
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
