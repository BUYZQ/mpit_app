import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';

class PersonContainer extends StatelessWidget {
  const PersonContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/receipts_stat");
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
          bottom: 40,
        ),
        decoration: appBoxDecoration,
        child: Row(
          spacing: 10,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: whiteColor,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Здравствуйте, Тамара",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Ваш рейтинг жильца",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.star,
                      color: whiteColor,
                    ),
                    Text(
                      "5,0",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Material(
              color: whiteColor,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Material(
              color: whiteColor,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {},
                child: SizedBox(
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}