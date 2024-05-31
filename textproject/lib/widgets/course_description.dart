import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  const CourseDescription({super.key});

  Future<Map<String, dynamic>> fetchCourseData() async {
    // Mock data simulating a fetch from Firebase
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    return {
      'title': 'telc Deutsch A1 für Zuwanderer',
      'description':
          'telc Deutsch A1 für Zuwanderer ist eine Prüfung für alle, die etwa 100–150 Stunden Unterricht besucht haben.',
      'levelA1':
          'Auf der Stufe A1 können Sie sich auf ganz einfache Weise über konkrete Bedürfnisse verständigen (z. B. sich vorstellen, Essen und Trinken, Einkaufen, Wohnen). Sie können einige sehr einfache grammatische Strukturen verwenden.',
      'examStructure':
          'Die Prüfung besteht aus einem schriftlichen und einem mündlichen Teil. Die schriftliche Prüfung dauert 70 Minuten. Ohne weitere Vorbereitungszeit legen Sie meist unmittelbar danach die mündliche Prüfung ab.',
      'examTable': [
        {'name': 'Sprachbausteine, Hören und Lesen', 'duration': '55'},
        {'name': 'Schreiben', 'duration': '15'},
      ],
      'preparation':
          '1. Die Sprache Deutsch erwerben Sie in Deutschkursen oder beim Üben und Lernen mit Freunden, Bekannten oder Familienangehörigen. Oder Sie lernen allein. Im Buchhandel finden Sie Lehrwerke, die Sie gezielt auf die Stufe A1 vorbereiten. 2. Machen Sie sich mit dem Ablauf und den Aufgabentypen der Prüfung telc Deutsch A1 für Zuwanderer vertraut. Die Übungstests helfen Ihnen dabei.',
      'certification':
          'Für die Auswertung der Prüfungsunterlagen und Erstellung und Zusendung der Zertifikate / Ergebnisbögen an uns, benötigt das telc GmbH in der Regel 4-6 Wochen. Sie erhalten von uns eine E-Mail oder Anruf, sobald die Ergebnisse vorliegen. Falls Sie Postversand als Option bei der Buchung ausgewählt hatten, leiten wir die Zertifikate / Ergebnisbögen per Post an Sie weiter.',
      'expectations':
          'Über die Einzelheiten der Prüfung informiert Sie der Übungstest telc Deutsch A1 für Zuwanderer. Sie finden darin einen vollständigen Testsatz (mit Lösungen) zum Ausprobieren zu Hause oder im Unterricht. Außerdem erfahren Sie, wie die Prüfung abläuft und wie die schriftlichen und mündlichen Leistungen bewertet werden. Der Übungstest und die dazugehörigen MP3-Dateien können Sie auf von der Telc Webseite bzw. über die folgenden zwei Links kostenlos herunterladen:',
    };
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchCourseData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data == null) {
          return const Center(child: Text('No data found'));
        } else {
          var courseData = snapshot.data!;
          return Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade900),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(courseData['title'],
                    style:
                        TextStyle(fontSize: 18, color: Colors.blue.shade900)),
                const SizedBox(height: 8),
                Text(courseData['description']),
                const SizedBox(height: 8),
                buildDescriptionSection(
                    'Was können Sie auf der Stufe A1?', courseData['levelA1']),
                buildDescriptionSection('Wie ist die Prüfung aufgebaut?',
                    courseData['examStructure']),
                const SizedBox(height: 8),
                buildExamStructureTable(courseData['examTable']),
                const SizedBox(height: 8),
                buildDescriptionSection(
                    'Wie bereite ich mich auf die Prüfung vor?',
                    courseData['preparation']),
                buildDescriptionSection(
                    'Wann erhalte ich mein Zertifikat / Ergebnisbogen?',
                    courseData['certification']),
                buildDescriptionSection(
                    'Was wird in der Prüfung von Ihnen erwartet?',
                    courseData['expectations']),
                const SizedBox(height: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Do something
                  },
                  icon: const Icon(Icons.download),
                  label: const Text('Übungstest und Hörtext (Zip)'),
                ),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildDescriptionSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(content),
        ],
      ),
    );
  }

  Widget buildExamStructureTable(List<Map<String, String>> examTable) {
    return Container(
      color: Colors.blue.shade50,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Schriftliche Prüfung')),
          DataColumn(label: Text('Min')),
        ],
        rows: examTable.map((row) {
          return DataRow(cells: [
            DataCell(Text(row['name']!)),
            DataCell(Text(row['duration']!)),
          ]);
        }).toList(),
      ),
    );
  }
}
