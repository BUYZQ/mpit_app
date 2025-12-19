import 'package:flutter/material.dart';
import 'package:mpit_hack/constants.dart';
import 'package:mpit_hack/features/widgets/header_section.dart';

class ReceiptsScreen extends StatelessWidget {
  const ReceiptsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderSection(
              title: "Квитанция",
              onTap: () => Navigator.pop(context),
            ),
            // Content Area
            Expanded(
              child: Container(
                color: whiteColor,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    // First Date Group
                    _buildDateGroup("12.03.2025", 5),
                    SizedBox(height: 30),
                    // Second Date Group
                    _buildDateGroup("12.03.2025", 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDateGroup(String date, int itemCount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Date Header
        Text(
          date,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 15),
        // List Items
        ...List.generate(
          itemCount,
              (index) => Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                color: greyColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

