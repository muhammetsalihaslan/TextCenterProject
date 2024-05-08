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
  OverlayEntry? overlayEntry;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        overlayEntry = OverlayEntry(
          builder: (context) => Positioned(
            top: 50,
            left: 50,
            child: Card(
              child: widget.hoverContent,
            ),
          ),
        );
        Overlay.of(context).insert(overlayEntry!);
      },
      onExit: (_) {
        overlayEntry?.remove();
      },
      child: widget.child,
    );
  }
}
