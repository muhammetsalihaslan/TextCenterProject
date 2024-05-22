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
    // Bu fonksiyon, Firestore'dan veri çektiğinizde kullanılacaktır.
    // Şu anda mock veri kullanıyoruz.
    await Future.delayed(
        const Duration(seconds: 1)); // Simulating network delay
    setState(() {
      kurstitles = [
        'Telc Deutsch A1',
        'Telc Deutsch A2',
        'Telc Deutsch B1',
        'Telc Deutsch B2',
        "Telc Deutsch C1"
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
      kategorien = ['PR - Prüfungen', "SP - Sprachkurse"];
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
    // Bu fonksiyon, Firestore'dan veri çektiğinizde kullanılacaktır.
    // Şu anda mock veri kullanıyoruz.
    await Future.delayed(
        const Duration(seconds: 1)); // Simulating network delay
    setState(() {
      courses = [
        {
          "#": "PR-240526-KS-C1A",
          "Kurstitle": "Telc Deutsch B1 - Allgemein",
          "Status": "✓",
          "Kategorie": "PR - Prüfungen",
          "Kursort": "Kassel",
          "Zeitraum": "am 26.05.24",
          "Freie Plätze": "8",
          "Preis": "220,00 €",
          "Anmeldung bis": "09.05.2024"
        },
        {
          "#": "PR-240601-KÖ-A1Z",
          "Kurstitle": "Telc Deutsch A1",
          "Status": "✓",
          "Kategorie": "PR - Prüfungen",
          "Kursort": "Köln",
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": "10",
          "Preis": "149,00 €",
          "Anmeldung bis": "15.05.2024"
        },
        {
          "#": "PR-240601-KÖ-A2",
          "Kurstitle": "Telc Deutsch A2",
          "Status": "✓",
          "Kategorie": "SP - Sprachkurse",
          "Kursort": "Köln",
          "Zeitraum": "am 01.06.24",
          "Freie Plätze": "10",
          "Preis": "159,00 €",
          "Anmeldung bis": "15.05.2024"
        },
      ];
      filteredCourses = List.from(courses); // Initially, show all courses
      isLoading = false;
    });
  }

  void onFilterChanged(Map<String, String?> filter) {
    setState(() {
      filteredCourses = courses.where((course) {
        final kurstitleMatch = filter['Kurstitle'] == null ||
            filter['Kurstitle']!.isEmpty ||
            course['Kurstitle'].contains(filter['Kurstitle']!);
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
        : Column(
            children: [
              SearchFilter(
                kurstitles: kurstitles,
                kursorts: kursorts,
                kategorien: kategorien,
                sprachniveaus: sprachniveaus,
                onFilterChanged: onFilterChanged,
              ),
              CourseList(courses: filteredCourses),
            ],
          );
  }
}
