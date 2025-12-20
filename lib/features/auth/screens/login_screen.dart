import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/my_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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
                    "Добро пожаловать",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Давайте авторизируемся",
                    style: TextStyle(fontSize: 25),
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
                      MyTextField(
                        hint: "Номер телефона",
                        controller: phoneController,
                      ),
                      MyTextField(
                        hint: "Пароль",
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          onPressed: navToMainScreen,
                          title: "Авторизироваться",
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          bg: Color(0xffECF0F3),
                          onPressed: navToRegister,
                          title: "Зарегистрироваться",
                          fg: blackColor,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          bg: blueColor,
                          fg: whiteColor,
                          onPressed: () {},
                          title: "Продолжить с ВК ID",
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

  void navToRegister() {
    Navigator.pushNamed(context, "/register");
  }

  void navToMainScreen() {
    if (phoneController.text.trim().isEmpty ||
        passwordController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Неверный номер телефона или пароль"),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      Navigator.pushNamed(context, "/root");
    }
  }
}
