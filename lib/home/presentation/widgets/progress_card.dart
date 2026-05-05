import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffEDEBFA),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Progress",
            style: TextStyle(
              color: Color(0xff6C4AB6),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// 🔵 Circle
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: CircularProgressIndicator(
                      value: 0.76,
                      strokeWidth: 6,
                      backgroundColor: Colors.white,
                      color: const Color(0xff6C4AB6),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "76%",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Overall",
                        style: TextStyle(
                          fontSize: 8,
                          color: Colors.grey,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Great job!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      "You're improving every day.",
                      style: TextStyle(color: Colors.grey, fontSize: 8),
                    ),

                    const SizedBox(height: 4),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: FractionallySizedBox(
                              alignment: Alignment.centerLeft,
                              widthFactor: 0.76,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xff6C4AB6),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          "76%",
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      "Keep going, you're doing awesome!",
                      style: TextStyle(fontSize: 8),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 140,
                width: 140,
                child: Image.asset("assets/images/user.png", fit: BoxFit.cover),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
