import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';

class HeaderSection extends StatelessWidget {

  final String title;
  final Function() onTap;

  const HeaderSection({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: appBoxDecoration,
      padding: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      child: Row(
        children: [
          Material(
            color: whiteColor,
            borderRadius: BorderRadius.circular(40),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              onTap: onTap,
              child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(Icons.arrow_back),
              ),
            ),
          ),
          SizedBox(width: 15),
          // Title
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(width: 55), // Balance for the circle icon
        ],
      ),
    );
  }
}