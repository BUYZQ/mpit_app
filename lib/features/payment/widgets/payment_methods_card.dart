import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/screens/payment_screen.dart';
import 'package:mpit_hack/features/payment/widgets/payment_method_tile.dart';
import 'package:mpit_hack/features/widgets/my_button.dart';

class PaymentMethodsCard extends StatelessWidget {
  final String? selectedMethod;
  final ValueChanged<String> onMethodSelected;
  final VoidCallback onPayPressed;

  const PaymentMethodsCard({
    required this.selectedMethod,
    required this.onMethodSelected,
    required this.onPayPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          ...paymentMethods.map(
                (method) => PaymentMethodTile(
              method: method,
              isSelected: selectedMethod == method.title,
              onTap: () => onMethodSelected(method.title),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Кварплата: 2500 рублей",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          MyButton(
            onPressed: onPayPressed,
            title: "Оплатить",
          ),
        ],
      ),
    );
  }
}