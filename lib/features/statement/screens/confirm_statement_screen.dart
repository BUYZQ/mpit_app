import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/header_section.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';

class StatementConfirmScreen extends StatefulWidget {
  const StatementConfirmScreen({super.key});

  @override
  State<StatementConfirmScreen> createState() => _StatementConfirmScreenState();
}

class _StatementConfirmScreenState extends State<StatementConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(
              title: "Заявление",
              onTap: () => Navigator.pop(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Ваше заявление принято на рассмотрение",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Номер вашего заявления",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: greyColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            6,
                                (index) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Container(
                                alignment: Alignment.center,
                                height: 70,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Text(index.toString()),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        // First Additional Field
                        Container(
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Second Additional Field
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: MyButton(
                            title: "Вернуться на главную",
                            onPressed: navToMainScreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void navToMainScreen() {
    Navigator.pushNamed(context, "/root");
  }
}

