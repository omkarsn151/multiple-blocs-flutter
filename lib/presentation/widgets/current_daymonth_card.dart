import 'package:flutter/material.dart';
import 'package:multiple_blocs_flutter/common/widgets/custom_text.dart';

class CurrentDaymonthCard extends StatelessWidget {
  final String currentDayOrMonth;

  const CurrentDaymonthCard({super.key, required this.currentDayOrMonth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: CustomText(
        text: currentDayOrMonth,
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Color(0xFF2C3E50),
      ),
    );
  }
}
