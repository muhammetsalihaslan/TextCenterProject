// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HoverableContainer extends StatefulWidget {
  final Widget child;
  final String tooltip;
  const HoverableContainer({
    super.key,
    required this.child,
    required this.tooltip,
  });

  @override
  State<HoverableContainer> createState() => _HoverableContainerState();
}

class _HoverableContainerState extends State<HoverableContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovered = true;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
      }),
      child: SizedBox(
          width: 200,
          height: 200,
          child: Visibility(
              visible: isHovered,
              child: Container(
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: Text(widget.tooltip)))),
    );
  }
}
