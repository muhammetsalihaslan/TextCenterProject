import 'package:flutter/material.dart';

class StandortePage extends StatelessWidget {
  final Map<String, String> formData;

  const StandortePage({super.key, required this.formData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Submitted Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: formData.keys.length,
          itemBuilder: (context, index) {
            String key = formData.keys.elementAt(index);
            return ListTile(
              title: Text(key),
              subtitle: Text(formData[key]!),
            );
          },
        ),
      ),
    );
  }
}
