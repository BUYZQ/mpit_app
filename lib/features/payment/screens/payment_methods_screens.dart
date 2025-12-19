import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/screens/payment_screen.dart';
import 'package:mpit_hack/features/payment/widgets/content.dart';
import 'package:mpit_hack/features/payment/widgets/header.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String? selectedBank;

  void onBankSelected(String bank) {
    setState(() {
      selectedBank = bank;
    });
  }

  void onContinue() {
    debugPrint('СБП банк: $selectedBank');
    // TODO: переход к QR / оплате
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Header(),
            Expanded(child: Content()),
          ],
        ),
      ),
    );
  }
}



