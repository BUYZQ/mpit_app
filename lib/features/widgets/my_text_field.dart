import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hint,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: backgroudAppColor,
        boxShadow: [
          BoxShadow(
            color: blackColor,
            blurRadius: 0.2,
            spreadRadius: 2,
              offset: Offset(-0.1, -0.1)
          ),
          BoxShadow(
              color: whiteColor,
              blurRadius: 5,
              spreadRadius: 4,
              offset: Offset(1, 1)
          ),
        ],
      ),
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 17, horizontal: 10),
          hintText: widget.hint,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
