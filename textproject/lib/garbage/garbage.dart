// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HoverableText extends StatefulWidget {
  final Widget child;
  final Widget hoverContent;
  const HoverableText({
    super.key,
    required this.child,
    required this.hoverContent,
  });

  @override
  State<HoverableText> createState() => _HoverableTextState();
}

class _HoverableTextState extends State<HoverableText> {
  final GlobalKey _hoverableKey = GlobalKey();
  bool isHovered = false;
  List<OverlayEntry> overlayEntries = [];

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        final RenderBox renderBox =
            _hoverableKey.currentContext!.findRenderObject() as RenderBox;
        final Offset offset = renderBox.localToGlobal(Offset.zero);
        final double top = offset.dy + renderBox.size.height + 0;
        final double left = offset.dx;

        OverlayEntry overlayEntry = OverlayEntry(
          builder: (context) => Positioned(
            top: top,
            left: left,
            child: Card(child: widget.hoverContent),
          ),
        );
        Overlay.of(context).insert(overlayEntry);
        overlayEntries.add(overlayEntry);

        setState(() => isHovered = true);
      },
      onExit: (_) {
        for (var entry in overlayEntries) {
          entry.remove();
        }
        overlayEntries.clear();
        setState(() => isHovered = false);
      },
      child: Container(
        key: _hoverableKey,
        child: widget.child,
      ),
    );
  }
}


//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


import 'package:flutter/material.dart';

/// Flutter code sample for [DropdownButton].

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
