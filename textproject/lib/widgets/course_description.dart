import 'package:flutter/material.dart';

class CourseDescription extends StatelessWidget {
  const CourseDescription({super.key});

  @override
  Widget build(BuildContext context) {
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
          Text('telc Deutsch A1 für Zuwanderer',
              style: TextStyle(fontSize: 18, color: Colors.blue.shade900)),
          const SizedBox(height: 8),
          const Text(
              'telc Deutsch A1 für Zuwanderer ist eine Prüfung für alle, die etwa 100–150 Stunden Unterricht besucht haben.'),
          const SizedBox(height: 8),
          buildDescriptionSection('Was können Sie auf der Stufe A1?',
              'Auf der Stufe A1 können Sie sich auf ganz einfache Weise über konkrete Bedürfnisse verständigen (z. B. sich vorstellen, Essen und Trinken, Einkaufen, Wohnen). Sie können einige sehr einfache grammatische Strukturen verwenden.'),
          buildDescriptionSection('Wie ist die Prüfung aufgebaut?',
              'Die Prüfung besteht aus einem schriftlichen und einem mündlichen Teil. Die schriftliche Prüfung dauert 70 Minuten. Ohne weitere Vorbereitungszeit legen Sie meist unmittelbar danach die mündliche Prüfung ab.'),
          const SizedBox(height: 8),
          buildExamStructureTable(),
          const SizedBox(height: 8),
          buildDescriptionSection('Wie bereite ich mich auf die Prüfung vor?',
              '1. Die Sprache Deutsch erwerben Sie in Deutschkursen oder beim Üben und Lernen mit Freunden, Bekannten oder Familienangehörigen. Oder Sie lernen allein. Im Buchhandel finden Sie Lehrwerke, die Sie gezielt auf die Stufe A1 vorbereiten. 2. Machen Sie sich mit dem Ablauf und den Aufgabentypen der Prüfung telc Deutsch A1 für Zuwanderer vertraut. Die Übungstests helfen Ihnen dabei.'),
          buildDescriptionSection(
              'Wann erhalte ich mein Zertifikat / Ergebnisbogen?',
              'Für die Auswertung der Prüfungsunterlagen und Erstellung und Zusendung der Zertifikate / Ergebnisbögen an uns, benötigt das telc GmbH in der Regel 4-6 Wochen. Sie erhalten von uns eine E-Mail oder Anruf, sobald die Ergebnisse vorliegen. Falls Sie Postversand als Option bei der Buchung ausgewählt hatten, leiten wir die Zertifikate / Ergebnisbögen per Post an Sie weiter.'),
          buildDescriptionSection('Was wird in der Prüfung von Ihnen erwartet?',
              'Über die Einzelheiten der Prüfung informiert Sie der Übungstest telc Deutsch A1 für Zuwanderer. Sie finden darin einen vollständigen Testsatz (mit Lösungen) zum Ausprobieren zu Hause oder im Unterricht. Außerdem erfahren Sie, wie die Prüfung abläuft und wie die schriftlichen und mündlichen Leistungen bewertet werden. Der Übungstest und die dazugehörigen MP3-Dateien können Sie auf von der Telc Webseite bzw. über die folgenden zwei Links kostenlos herunterladen:'),
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

  Widget buildExamStructureTable() {
    return Container(
      color: Colors.blue.shade50,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('Schriftliche Prüfung')),
          DataColumn(label: Text('Min')),
        ],
        rows: const [
          DataRow(cells: [
            DataCell(Text('Sprachbausteine, Hören und Lesen')),
            DataCell(Text('55')),
          ]),
          DataRow(cells: [
            DataCell(Text('Schreiben')),
            DataCell(Text('15')),
          ]),
        ],
      ),
    );
  }
}
