import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/screens/payment_methods_screens.dart';
import 'package:mpit_hack/features/payment/widgets/bank.dart';

class BankTile extends StatelessWidget {
  final Bank bank;
  final bool isSelected;
  final VoidCallback onTap;

  const BankTile({
    required this.bank,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 80,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: isSelected ? blackColor : backgroudAppColor,
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
        child: Row(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: whiteColor,
            ),
            const SizedBox(width: 15),
            Text(
              bank.name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(Icons.check_circle, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
