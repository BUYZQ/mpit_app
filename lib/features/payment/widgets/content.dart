import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/payment/widgets/bank.dart';
import 'package:mpit_hack/features/payment/widgets/bank_tile.dart';

class Content extends StatefulWidget {
  const Content();

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  String? selectedBank;

  void select(String bank) {
    setState(() {
      selectedBank = bank;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: banks
                  .map(
                    (bank) => BankTile(
                  bank: bank,
                  isSelected: selectedBank == bank.name,
                  onTap: () => select(bank.name),
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}