import 'package:flutter/material.dart';

class AdressForm extends StatelessWidget {
  const AdressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
                  Icon(Icons.location_on, color: Colors.black),
                  SizedBox(width: 8.0),
                  Text('Adresse',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 16.0),
              buildTextField('c/o'),
              buildTextField('Straße *'),
              buildTextField('PLZ *'),
              buildTextField('Ort *'),
              buildDropdownField('Land *', 'Deutschland',
                  ['Deutschland', 'Österreich', 'Schweiz']),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }

  Widget buildDropdownField(String label, String hint, List<String> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        hint: Text(hint),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item),
          );
        }).toList(),
        onChanged: (String? newValue) {},
      ),
    );
  }
}
