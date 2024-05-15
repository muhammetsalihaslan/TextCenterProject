import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  final TextEditingController firstPartExampleController =
      TextEditingController();

  String? _selectedItem = "tlc Exam";
  final List<String> _dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownMenu<String>(
              controller: firstPartExampleController,
              enableFilter: true,
              requestFocusOnTap: true,
              label: _selectedItem,
              inputDecorationTheme: const InputDecorationTheme(
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              ),
              onSelected: (String? newValue) {
                setState(() {
                  _selectedItem = newValue;
                });
              },
              dropdownMenuEntries:
                  _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        )
      ],
    );
  }
}
