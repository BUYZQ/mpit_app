import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mpit_hack/constants.dart';

class CodeTextField extends StatefulWidget {
  final TextEditingController controller;

  const CodeTextField({
    super.key,
    required this.controller,
  });

  @override
  State<CodeTextField> createState() => _CodeTextFieldState();
}

class _CodeTextFieldState extends State<CodeTextField> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 70,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor,
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {
          FocusScope.of(context).nextFocus();
        },
        keyboardType: TextInputType.number,
        autofocus: true,
        textInputAction: TextInputAction.next,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 1,
        textAlign: TextAlign.center,
        controller: widget.controller,
        decoration: InputDecoration(
          counterText: "",
          contentPadding: EdgeInsets.zero,
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
