import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/greeting_section.dart';
import '../widgets/progress_card.dart';
import '../widgets/quick_actions.dart';
import '../widgets/continue_learning.dart';
import '../widgets/daily_goal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onNavTap(int index) {
    setState(() => _currentIndex = index);
  }

  Widget _buildBody() {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GreetingSection(),
          SizedBox(height: 20),
          ProgressCard(),
          SizedBox(height: 24),
          QuickActions(),
          SizedBox(height: 24),
          ContinueLearning(),
          SizedBox(height: 24),
          DailyGoal(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: const Icon(Icons.menu, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none, color: Colors.black),
          ),
        ],
        title: const Column(
          children: [
            Text(
              "ACADEMe",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Learn. Practice. Master.",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      ),
      body: SafeArea(child: _buildBody()),
      bottomNavigationBar: AppBottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onNavTap,
      ),
    );
  }
}
