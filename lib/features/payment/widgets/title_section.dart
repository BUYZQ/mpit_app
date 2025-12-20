import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Способ оплаты",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Выберете способ, которым\nхотите оплатить",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}