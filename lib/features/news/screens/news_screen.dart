import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';
import 'package:mpit_hack/features/widgets/person_container.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PersonContainer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 40,
                    ),
                    decoration: appBoxDecoration,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      spacing: 10,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/news/onboarding.png"),
                        Text(
                          "Отключение воды с 11.08.2025 по 20.08.2025",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Будет производиться отключение горячей воды в сявзи с ремонтными работам... ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: MyButton(
                            onPressed: () {},
                            title: "Развернуть полностью",
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}


