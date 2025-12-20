import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/header_section.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/my_text_field.dart';

class StatementScreen extends StatefulWidget {
  const StatementScreen({super.key});

  @override
  State<StatementScreen> createState() => _StatementScreenState();
}

class _StatementScreenState extends State<StatementScreen> {
  final TextEditingController performByController = TextEditingController();
  final TextEditingController responsibleController = TextEditingController();
  final TextEditingController thirdFieldController = TextEditingController();

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
            // Main Content Area
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: appBoxDecoration,
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyTextField(
                        hint: "",
                        controller: TextEditingController(),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration:appBoxDecoration,
                      ),
                      SizedBox(height: 30),
                      // "Выполнить по" Section
                      Text(
                        "Выполнить по",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        hint: "",
                        controller: performByController,
                      ),
                      SizedBox(height: 25),
                      // "Ответственный" Section
                      Text(
                        "Ответственный (Введите ваше имя)",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 10),
                      MyTextField(
                        hint: "",
                        controller: responsibleController,
                      ),
                      SizedBox(height: 25),
                      // Third input field (without label)
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: MyButton(
                          title: "Отправить",
                          onPressed: navToConfirmStatement,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    performByController.dispose();
    responsibleController.dispose();
    thirdFieldController.dispose();
    super.dispose();
  }

  void navToConfirmStatement() {
    Navigator.pushNamed(context, "/statement_confirm");
  }
}

