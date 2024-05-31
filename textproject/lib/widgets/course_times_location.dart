import 'package:flutter/material.dart';

class CourseTimesAndLocation extends StatelessWidget {
  const CourseTimesAndLocation({super.key});

  Future<Map<String, dynamic>> fetchCourseData() async {
    // Simulating fetching data with mock data
    await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
    return {
      'courseTimes': [
        {'day': 'Samstag', 'time': '10:00'},
        {'day': 'Sonntag', 'time': '14:00'},
        {'day': 'Samstag', 'time': '10:00'},
        {'day': 'Sonntag', 'time': '14:00'},
        {'day': 'Samstag', 'time': '10:00'},
        {'day': 'Sonntag', 'time': '14:00'},
        {'day': 'Samstag', 'time': '10:00'},
      ],
      'location': {
        'name': 'ABC-Mainz e. V.',
        'street': 'Rabanusstraße 5',
        'city': '55118 Mainz',
      }
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
          var courseTimes = courseData['courseTimes'] as List<dynamic>;
          var location = courseData['location'] as Map<String, dynamic>;

          return Container(
            width: 550,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.blue.shade900),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Kurszeiten',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900)),
                      const SizedBox(height: 8),
                      DataTable(
                        columns: [
                          DataColumn(
                              label: Text('Wochentag',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade900))),
                          DataColumn(
                              label: Text('Uhrzeit',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade900))),
                        ],
                        rows: courseTimes.map((time) {
                          return DataRow(cells: [
                            DataCell(Text(time['day'],
                                style: TextStyle(color: Colors.blue.shade900))),
                            DataCell(Text(time['time'],
                                style: TextStyle(color: Colors.blue.shade900))),
                          ]);
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/bodyimg/map_background.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Veranstaltungsort',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 251, 251, 251))),
                        const SizedBox(height: 8),
                        Text(location['name'],
                            style: TextStyle(color: Colors.blue.shade900)),
                        Text(location['street'],
                            style: TextStyle(color: Colors.blue.shade900)),
                        Text(location['city'],
                            style: TextStyle(color: Colors.blue.shade900)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
