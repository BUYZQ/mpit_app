import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/widgets/payment_method_tile.dart';
import 'package:mpit_hack/features/payment/widgets/title_section.dart';
import 'package:mpit_hack/features/widgets/header_section.dart';

import '../widgets/payment_methods_card.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String? selectedMethod;

  void onMethodSelected(String method) {
    setState(() {
      selectedMethod = method;
    });
  }

  void onPayPressed() {
    Navigator.pushNamed(context, "/payment_methods");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(
              onTap: () => Navigator.pop(context),
              title: "Оплата",
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleSection(),
                      const SizedBox(height: 20),
                      PaymentMethodsCard(
                        selectedMethod: selectedMethod,
                        onMethodSelected: onMethodSelected,
                        onPayPressed: onPayPressed,
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







class PayButton extends StatelessWidget {
  final bool enabled;
  final VoidCallback onPressed;

  const PayButton({
    required this.enabled,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: enabled ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          disabledBackgroundColor: Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Text(
          "Перейти к оплате",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class PaymentMethod {
  final String title;
  final String subtitle;
  final IconData icon;

  const PaymentMethod({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

const List<PaymentMethod> paymentMethods = [
  PaymentMethod(
    title: 'Банковская карта',
    subtitle: 'Visa, Mastercard, МИР',
    icon: Icons.credit_card,
  ),
  PaymentMethod(
    title: 'СБП',
    subtitle: 'Оплата по QR-коду',
    icon: Icons.qr_code,
  ),
  PaymentMethod(
    title: 'Интернет-банк',
    subtitle: 'Оплата через приложение банка',
    icon: Icons.account_balance,
  ),
  PaymentMethod(
    title: 'Наличные',
    subtitle: 'Оплата при получении',
    icon: Icons.payments,
  ),
];
