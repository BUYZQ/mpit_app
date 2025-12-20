import 'dart:ui';

import 'package:flutter/cupertino.dart';

final Color backgroudAppColor = Color(0xffECF0F3);
final Color blackColor = Color(0xff000000);
final Color whiteColor = Color(0xffFFFFFF);
final Color greyColor = Color(0xffD9D9D9);
final Color blueColor = Color(0xff1B65E0);

final BoxDecoration appBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(40),
  color: backgroudAppColor,
  boxShadow: [
    BoxShadow(
      color: blackColor,
      blurRadius: 0.2,
      spreadRadius: 3,
      offset: Offset(1.4, 1.4),
    ),
    BoxShadow(
      color: whiteColor,
      blurRadius: 5,
      spreadRadius: 5,
    ),
  ],
);