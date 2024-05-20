import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth =
        screenWidth > 800 ? screenWidth * 3 / 4 : screenWidth;
    return Center(
        child: Container(
      width: containerWidth,
      color: Colors.lightBlueAccent,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.search, color: Colors.blue),
              SizedBox(width: 8),
              Text("Suchfilter",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Nutzen Sie die Suchfilter, um bestimmte Kurse schneller und einfacher zu finden.',
          ),
          const SizedBox(height: 16),
          screenWidth > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: _buildDropdown('Kurstitle')),
                    const SizedBox(width: 16),
                    Expanded(child: _buildDropdown("Kursort")),
                  ],
                )
              : Column(
                  children: [
                    _buildTextField('Kurstitle'),
                    const SizedBox(height: 16),
                    _buildDropdown('Kategorie'),
                  ],
                ),
          const SizedBox(height: 16),
          screenWidth > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: _buildDropdown('Kursort')),
                    const SizedBox(width: 16),
                    Expanded(child: _buildDropdown('Sprachniveau')),
                  ],
                )
              : Column(
                  children: [
                    _buildDropdown('Kursort'),
                    const SizedBox(height: 16),
                    _buildDropdown('Sprachniveau'),
                  ],
                ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 520,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )),
                  child: const Text(
                    "Kurse finden",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    ));
  }

  Widget _buildDropdown(String label) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      items: ["1", "2", "3", "4", "5"].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _buildTextField(String label) {
    return TextField(
        decoration: InputDecoration(
      labelText: label,
      border: const OutlineInputBorder(),
    ));
  }
}
