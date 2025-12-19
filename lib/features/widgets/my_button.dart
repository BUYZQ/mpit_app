import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? bg;
  final Color? fg;

  const MyButton({
    super.key,
    required this.title,
    this.onPressed,
    this.bg,
    this.fg,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: bg ?? whiteColor,
        foregroundColor: fg ?? Colors.black,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
