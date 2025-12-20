import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/header_section.dart';

class StatementHistoryScreen extends StatelessWidget {
  const StatementHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(
              title: "История заявлений",
              onTap: () => Navigator.pop(context),
            ),
            // Content Area
            Expanded(
              child: Container(
                color: whiteColor,
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // "Действующие заявления" Section
                      Text(
                        "Действующие заявления",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 15),
                      // Large placeholder for active applications
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: appBoxDecoration,
                        child: Column(
                          spacing: 15,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Название заявления",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Описание заявления: (пример, соседи шумят на протяжении 5 часов с 23:00 вечера, нарушая комендатский час",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Номер заявки",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Возможность регистрации нового заявления:",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "3:59:45",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Выполненные заявления",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: appBoxDecoration,
                        child: Column(
                          spacing: 15,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Название заявления",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Описание заявления: (пример, соседи шумят на протяжении 5 часов с 23:00 вечера, нарушая комендатский час",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Номер заявки: 000123",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: appBoxDecoration,
                        child: Column(
                          spacing: 15,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Название заявления",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Описание заявления: (пример, соседи шумят на протяжении 5 часов с 23:00 вечера, нарушая комендатский час",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            Text(
                              "Номер заявки: 000115",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                          ],
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
}

