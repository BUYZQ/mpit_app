import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/person_container.dart';

class StatementListScreen extends StatefulWidget {
  const StatementListScreen({super.key});

  @override
  State<StatementListScreen> createState() => _StatementListScreenState();
}

class _StatementListScreenState extends State<StatementListScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonContainer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Заявление",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: MyButton(
                        title: "Перейти",
                        onPressed: navToStatement,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: greyColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "История заявление",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: MyButton(
                        title: "Перейти",
                        onPressed: navToHistory,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  void navToStatement() {
    Navigator.pushNamed(context, "/statement");
  }

  void navToHistory() {
    Navigator.pushNamed(context, "/statement_history");
  }
}

