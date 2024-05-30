import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CourseDetailCard extends StatefulWidget {
  final Map<String, dynamic> course;

  const CourseDetailCard({super.key, required this.course});

  @override
  State<CourseDetailCard> createState() => _CourseDetailCardState();
}

class _CourseDetailCardState extends State<CourseDetailCard> {
  final DateFormat dateFormat2 = DateFormat('dd.MM.yyyy');

  bool isApplicationDeadlinePassed(String appDeadline) {
    try {
      final deadline = dateFormat2.parse(appDeadline);
      return DateTime.now().isAfter(deadline);
    } catch (e) {
      return false;
    }
  }

  Color getFreiePlaetzeColor(int freiePlaetze) {
    if (freiePlaetze == 0) {
      return Colors.red;
    } else if (freiePlaetze < 5) {
      return Colors.yellow;
    } else {
      return Colors.green;
    }
  }

  Icon getFreiePlaetzeIcon(int freiePlaetze) {
    Color color = getFreiePlaetzeColor(freiePlaetze);
    return Icon(Icons.person, color: color);
  }

  @override
  Widget build(BuildContext context) {
    bool isStatusOk =
        !(isApplicationDeadlinePassed(widget.course['Anmeldung bis']) ||
            int.tryParse(widget.course['Freie Plätze'].toString()) == 0);
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF003969),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.info, size: 40, color: Colors.white),
              SizedBox(width: 20),
              Text('Kursdetails',
                  style: TextStyle(fontSize: 25, color: Colors.white)),
            ],
          ),
          const SizedBox(height: 8),
          buildDetailRow('Kurstitel', widget.course['Kurstitel']),
          const Divider(color: Colors.white, thickness: 2),
          buildDetailRow('Zeitraum', widget.course['Zeitraum']),
          const Divider(color: Colors.white, thickness: 2),
          buildDetailRow('Anmeldung bis', widget.course['Anmeldung bis']),
          const Divider(color: Colors.white, thickness: 2),
          buildStatusRow('Status', widget.course['Anmeldung bis'],
              widget.course['Freie Plätze']),
          const Divider(color: Colors.white, thickness: 2),
          buildDetailRow('Kategorie', widget.course['Kategorie']),
          const Divider(color: Colors.white, thickness: 2),
          buildDetailRow('Sprachniveau', widget.course['Sprachniveau']),
          const Divider(color: Colors.white, thickness: 2),
          buildFreiePlaetzeRow('Freie Plätze', widget.course['Freie Plätze']),
          const Divider(color: Colors.white, thickness: 2),
          buildDetailRow('Preis', widget.course['Preis']),
          const SizedBox(height: 20),
          if (isStatusOk)
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15), // Button size
                ),
                onPressed: () {
                  // Button action
                },
                child: const Text('Jetzt buchen',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(label, style: const TextStyle(color: Colors.white)),
          ),
          Expanded(
            flex: 3,
            child: Text(value,
                style: const TextStyle(color: Colors.white),
                overflow: TextOverflow.visible),
          ),
        ],
      ),
    );
  }

  Widget buildFreiePlaetzeRow(String label, dynamic freiePlaetze) {
    int freiePlaetzeInt = int.tryParse(freiePlaetze.toString()) ?? 0;
    Icon freiePlaetzeIcon = getFreiePlaetzeIcon(freiePlaetzeInt);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(label, style: const TextStyle(color: Colors.white)),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                freiePlaetzeIcon,
                const SizedBox(width: 8), // İkon ile sayı arasında boşluk
                Text(freiePlaetzeInt.toString(),
                    style: const TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStatusRow(String label, String deadline, dynamic freiePlaetze) {
    bool isDeadlinePassed = isApplicationDeadlinePassed(deadline);
    bool arePlacesAvailable = int.tryParse(freiePlaetze.toString()) == 0;

    IconData iconData =
        (isDeadlinePassed || arePlacesAvailable) ? Icons.close : Icons.check;
    Color iconColor =
        (isDeadlinePassed || arePlacesAvailable) ? Colors.red : Colors.green;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(label, style: const TextStyle(color: Colors.white)),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(iconData, color: iconColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
