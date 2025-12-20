import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';

class ReseiptsStatScreen extends StatelessWidget {
  const ReseiptsStatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            UserCard(),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  ReceiptsCard(),
                  SizedBox(height: 16),
                  AverageRentCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 70,
        left: 20,
        right: 20,
        bottom: 40,
      ),
      decoration: appBoxDecoration,
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Шаленик Тамара Ивановна',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text('Ваш рейтинг ★ 5.0'),
                SizedBox(height: 4),
                Text(
                  'Посёлок Чульман, ул. Островского д. 12',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ReceiptsCard extends StatefulWidget {
  const ReceiptsCard({super.key});

  @override
  State<ReceiptsCard> createState() => _ReceiptsCardState();
}

class _ReceiptsCardState extends State<ReceiptsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: appBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Квитанции',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: navToReceiptsScreen,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: Text('Посмотреть'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navToReceiptsScreen() {
    Navigator.pushNamed(context, "/receipts");
  }
}

class AverageRentCard extends StatelessWidget {
  const AverageRentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: appBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Средняя квартплата',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 120,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                10,
                    (index) => Container(
                  width: 12,
                  height: 40.0 + (index % 5) * 15,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade600,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Итого: 1360,5',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

BoxDecoration _cardDecoration() {
  return BoxDecoration(
    color: Colors.grey.shade400,
    borderRadius: BorderRadius.circular(20),
  );
}
