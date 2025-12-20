import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/screens/payment_screen.dart';

class PaymentMethodTile extends StatelessWidget {
  final PaymentMethod method;
  final bool isSelected;
  final VoidCallback onTap;

  const PaymentMethodTile({
    required this.method,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
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
            Image.asset(
              method.icon,
              width: 28,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    method.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Colors.white,
              ),
          ],
        ),
      ),
    );
  }
}