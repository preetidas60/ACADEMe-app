import 'package:flutter/material.dart';

class DailyGoal extends StatelessWidget {
  const DailyGoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xffF5F3FF), Color(0xffEFEAFF)],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          Row(
            children: [
              Icon(Icons.flag, color: Colors.deepPurple),
              SizedBox(width: 8),
              Text("Daily Goal", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 8),
          LinearProgressIndicator(value: 0.66),
          SizedBox(height: 4),
          Text("2 / 3 completed"),
        ],
      ),
    );
  }
}
