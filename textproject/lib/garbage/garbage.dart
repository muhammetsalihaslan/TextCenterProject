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
