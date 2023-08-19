import 'package:flutter/material.dart';

class CircleIconButton extends StatefulWidget {
  const CircleIconButton({
    super.key,
    required this.text,
    required this.icon,
    required this.action,
    this.color = Colors.transparent,
    this.size = 40,
  });

  final Widget text;
  final Widget icon;
  final Function action;
  final double size;
  final Color color;

  @override
  State<CircleIconButton> createState() => _CircleIconButtonState();
}

class _CircleIconButtonState extends State<CircleIconButton> {
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => widget.action(),
          child: Container(
            width: widget.size,
            height: widget.size,
            color: widget.color,
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                spacing: 10,
                children: [
                  widget.icon,
                  widget.text,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
