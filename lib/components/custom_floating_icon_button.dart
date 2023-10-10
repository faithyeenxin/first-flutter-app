import 'package:flutter/material.dart';

class CustomFloatingIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final String tooltip;
  final Color splashColor;
  final Color hoverColor;
  final Icon customIcon;

  const CustomFloatingIconButton({
    super.key,
    this.onPressed,
    this.backgroundColor = Colors.green,
    this.tooltip = 'Add Item',
    this.splashColor = Colors.blue,
    this.hoverColor = Colors.green,
    required this.customIcon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      tooltip: tooltip,
      elevation: 0.8,
      splashColor: splashColor,
      hoverColor: hoverColor,
      child: customIcon,
    );
  }
}
