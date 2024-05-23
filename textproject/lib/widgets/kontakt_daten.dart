import 'package:flutter/material.dart';

class KontaktDaten extends StatelessWidget {
  const KontaktDaten({super.key});

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
                  Icon(Icons.person, color: Colors.black),
                  SizedBox(width: 8.0),
                  Text('Kontaktdaten',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 16.0),
              buildDropdownField('Anrede *', '-- bitte auswählen --', []),
              buildTextField('Akademischer Titel'),
              buildTextField('Vorname *'),
              buildTextField('Nachname *'),
              buildDateField('Geburtsdatum *'),
              buildTextField('Geburtsort *'),
              buildDropdownField('Geburtsland *', '-- leer --', []),
              buildDropdownField('Muttersprache *', '-- leer --', []),
              buildTextField('Ausweisnummer *'),
              buildTextField('Telefon'),
              buildTextField('Handy'),
              buildTextField('E-Mail *'),
            ],
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

  Widget buildDateField(String label) {
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
          suffixIcon: const Icon(Icons.calendar_today),
        ),
        keyboardType: TextInputType.datetime,
      ),
    );
  }
}
