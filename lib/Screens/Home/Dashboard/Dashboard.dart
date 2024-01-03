
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Card(),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text("Card 1"),
                    Text("Card 2"),
                    Text("Card 3"),
                  ],
                ),
              ],
            ),
          ),
          )
          ),
    );
  }
}