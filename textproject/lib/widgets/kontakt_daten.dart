import 'package:flutter/material.dart';

class KontaktDaten extends StatefulWidget {
  final Map<String, String> formData;

  const KontaktDaten({super.key, required this.formData});

  @override
  KontaktDatenState createState() => KontaktDatenState();
}

class KontaktDatenState extends State<KontaktDaten> {
  final _formKey = GlobalKey<FormState>();

  void saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Kontaktdaten',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(labelText: 'Anrede *'),
              items: ['Mr', 'Ms', 'Mrs']
                  .map((label) => DropdownMenuItem(
                        value: label,
                        child: Text(label),
                      ))
                  .toList(),
              onChanged: (value) {},
              onSaved: (value) {
                widget.formData['anrede'] = value!;
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select an option';
                }
                return null;
              },
            ),
            TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Akademischer Titel'),
              onSaved: (value) {
                widget.formData['akademischer_titel'] = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Vorname *'),
              onSaved: (value) {
                widget.formData['vorname'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your first name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Nachname *'),
              onSaved: (value) {
                widget.formData['nachname'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your last name';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Geburtsdatum *'),
              onSaved: (value) {
                widget.formData['geburtsdatum'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your birth date';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Geburtsort *'),
              onSaved: (value) {
                widget.formData['geburtsort'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your birth place';
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
