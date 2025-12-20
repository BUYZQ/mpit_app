import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/my_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController patronymicController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                    "Давайте зарегестрируемся",
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
                      offset: Offset(1.4, 1.4)
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
                        hint: "Фамилия",
                        controller: surnameController,
                      ),
                      MyTextField(hint: "Имя", controller: nameController),
                      MyTextField(
                        hint: "Отчество",
                        controller: patronymicController,
                      ),
                      MyTextField(
                        hint: "Номер телефона",
                        controller: phoneController,
                      ),
                      MyTextField(
                        hint: "Пароль",
                        controller: passwordController,
                      ),
                      MyTextField(
                        hint: "Подтвердите пароль",
                        controller: confirmPasswordController,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: MyButton(
                          title: "Зарегистрироваться",
                          onPressed: navToOtp,
                        )
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child:  MyButton(
                          bg: whiteColor,
                          fg: blackColor,
                          title: "Авторизироваться",
                          onPressed: navToLogin,
                        )
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: MyButton(
                          title: "Продолжить с ВК ID",
                          onPressed: () {},
                        )
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

  void navToLogin() {
    Navigator.pushNamed(context, "/login");
  }

  navToOtp() {
    Navigator.pushNamed(context, "/otp");
  }
}
