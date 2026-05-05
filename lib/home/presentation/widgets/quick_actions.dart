import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Quick Actions",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 14),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ActionCard(
              icon: "🤖",
              title: "Ask AI Co-Pilot",
              subtitle: "Get instant help",
              color: Color(0xffEDEBFA),
            ),
            ActionCard(
              icon: "🧪",
              title: "Sandbox",
              subtitle: "Practice & Explore",
              color: Color(0xffE6F4EA),
            ),
            ActionCard(
              icon: "🎯",
              title: "Take a Quiz",
              subtitle: "Test your knowledge",
              color: Color(0xffFFF4E5),
            ),
            ActionCard(
              icon: "📘",
              title: "Browse Courses",
              subtitle: "Explore topics",
              color: Color(0xffEAF3FF),
            ),
          ],
        ),
      ],
    );
  }
}

class ActionCard extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(icon, style: const TextStyle(fontSize: 26)),

          const SizedBox(height: 5),

          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 8, fontWeight: FontWeight.w700),
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 6,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
