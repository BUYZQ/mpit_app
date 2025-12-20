import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/auth/widgets/code_text_field.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/my_text_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "МойРайон",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 4,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/auth/home.png", width: 45),
                  Image.asset("assets/auth/home.png", width: 65),
                  Image.asset("assets/auth/home.png", width: 95),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Подтвердите номер\nтелефна",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Введите код, который пришёл вам\nна номер телефона",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
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
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    spacing: 10,
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                          CodeTextField(
                            controller: TextEditingController(),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          onPressed: navToOtpGosuslugi,
                          title: "Подтвердить"
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          bg: whiteColor,
                          fg: blackColor,
                          onPressed: () {},
                          title: "Отпрвить код заново",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  void navToOtpGosuslugi() {
    Navigator.pushNamed(context, "/otp_gosuslugi");
  }

  void navToRegister() {
    Navigator.pushNamed(context, "/register");
  }
}

