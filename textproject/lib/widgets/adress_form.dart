import 'package:flutter/material.dart';

class AdresseForm extends StatefulWidget {
  final Map<String, String> formData;

  const AdresseForm({super.key, required this.formData});

  @override
  AdresseFormState createState() => AdresseFormState();
}

class AdresseFormState extends State<AdresseForm> {
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
              'Adresse',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(labelText: 'c/o'),
              onSaved: (value) {
                widget.formData['co'] = value!;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Straße *'),
              onSaved: (value) {
                widget.formData['strasse'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your street';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'PLZ *'),
              onSaved: (value) {
                widget.formData['plz'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your postal code';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Ort *'),
              onSaved: (value) {
                widget.formData['ort'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your city';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Land *'),
              initialValue: 'Deutschland',
              onSaved: (value) {
                widget.formData['land'] = value!;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your country';
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
