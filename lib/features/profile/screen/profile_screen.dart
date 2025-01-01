import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// const data = [
//   {'name': 'John Doe', 'age': 30},
//   {'name': 'Jane Doe', 'age': 25},
//   {'name': 'Bob Smith', 'age': 40},
// ];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 20,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => context.go('/'),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
