import 'package:flutter/material.dart';
import 'search_filter.dart';
import 'course_list.dart';

class CourseAll extends StatefulWidget {
  const CourseAll({super.key});

  @override
  CourseAllState createState() => CourseAllState();
}

class CourseAllState extends State<CourseAll> {
  List<Map<String, dynamic>> courses = [];
  List<Map<String, dynamic>> filteredCourses = [];
  List<String> kurstitles = [];
  List<String> kursorts = [];
  List<String> kategorien = [];
  List<String> sprachniveaus = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFilters();
    fetchCourses();
  }

  Future<void> fetchFilters() async {
    await Future.delayed(
        const Duration(seconds: 1)); // Simulating network delay
    setState(() {
      kurstitles = [
        'Telc Deutsch',
        'Telc English',
        'Telc Turkish',
        'Telc French',
        'Telc Arabic',
      ];
      kursorts = [
        'Frankfurt am Main',
        'Kaiserslautern',
        'Kassen',
        'Köln',
        'Ludwigshafen am Rhein',
        'Mainz',
        'Weisbaden'
      ];
      kategorien = ['PR-Prüfungen', "SP-Sprachkurse"];
      sprachniveaus = [
        'A1',
        'A2',
        'A2-B1',
        'B1',
        'B1-B2',
        'B2',
        'B2-C1',
        'C1',
        'C2'
      ];
    });
  }

  Future<void> fetchCourses() async {
    await Future.delayed(
        const Duration(seconds: 1)); // Simulating network delay
    setState(() {
      courses = [
        {
          "KursID": "PR-240526-KS-C1A",
          "Kurstitel": "Telc Deutsch for immigrant first step",
          "Sprachniveau": "A1",
          "Status": "✓",
          "Kategorie": "PR-Prüfungen",
          "Kursort": "Kassel",
          "Zeitraum": "am 26.05.24",
          "Freie Plätze": "8",
          "Preis": "220,00 €",
          "Anmeldung bis": "09.05.2024"
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc English",
          "Sprachniveau": "A2",
          "Status": "✓",
          "Kategorie": "PR-Prüfungen",
          "Kursort": "Köln",
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": "10",
          "Preis": "149,00 €",
          "Anmeldung bis": "15.05.2024"
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc English",
          "Sprachniveau": "A2-B1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": "0",
          "Preis": "149,00 €",
          "Anmeldung bis": "15.06.2024"
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
        {
          "KursID": "PR-240601-KÖ-A1Z",
          "Kurstitel": "Telc Arabic",
          "Sprachniveau": "C1",
          "Status": "✓",
          "Kategorie": "SP-Sprachkurse",
          "Kursort": 'Frankfurt am Main',
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": 2,
          "Preis": "149,00 €",
          "Anmeldung bis": '15.06.2024'
        },
      ];
      filteredCourses = List.from(courses); // Initially, show all courses
      isLoading = false;
    });
  }

  void onFilterChanged(Map<String, String?> filter) {
    setState(() {
      filteredCourses = List.from(courses);
      filteredCourses = courses.where((course) {
        final kurstitleMatch = filter['Kurstitel'] == null ||
            filter['Kurstitel']!.isEmpty ||
            course['Kurstitel'].contains(filter['Kurstitel']!);
        final kursortMatch = filter['Kursort'] == null ||
            filter['Kursort']!.isEmpty ||
            course['Kursort'] == filter['Kursort'];
        final kategorieMatch = filter['Kategorie'] == null ||
            filter['Kategorie']!.isEmpty ||
            course['Kategorie'] == filter['Kategorie'];
        final sprachniveauMatch = filter['Sprachniveau'] == null ||
            filter['Sprachniveau']!.isEmpty ||
            course['Sprachniveau'] == filter['Sprachniveau'];

        return kurstitleMatch &&
            kursortMatch &&
            kategorieMatch &&
            sprachniveauMatch;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SearchFilter(
                      kurstitles: kurstitles,
                      kursorts: kursorts,
                      kategorien: kategorien,
                      sprachniveaus: sprachniveaus,
                      onFilterChanged: onFilterChanged,
                    ),
                    SizedBox(
                      height: 600,
                      child: CourseList(courses: filteredCourses),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
