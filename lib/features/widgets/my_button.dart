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
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        // Если bg не null - используем сплошной цвет
        color: bg,
        // Если bg == null - используем градиент
        gradient: bg == null ? LinearGradient(
          colors: [
            Color(0xff0009FF).withOpacity(0.8),
            Color(0xff2142FF).withOpacity(0.8),
            Color(0xff325EFF).withOpacity(0.8),
            Color(0xff427AFF).withOpacity(0.8),
            Color(0xff81CBF9).withOpacity(0.8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ) : null, // null отключает градиент
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: (bg ?? Colors.blue).withOpacity(0.3), // Тень зависит от bg
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(1.5, 1.5),
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(40),
        child: InkWell(
          borderRadius: BorderRadius.circular(40),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: fg ?? whiteColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
