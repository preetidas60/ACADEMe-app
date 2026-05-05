import 'package:flutter/material.dart';

class ContinueLearning extends StatelessWidget {
  const ContinueLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Continue Learning",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("See All", style: TextStyle(color: Colors.deepPurple)),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mathematics – Chapter 6",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Triangles and Its Properties",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 6),
                    LinearProgressIndicator(value: 0.75),
                    SizedBox(height: 4),
                    Text(
                      "15 / 20 Lessons Completed",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              ElevatedButton(onPressed: null, child: Text("Continue")),
            ],
          ),
        ),
      ],
    );
  }
}
