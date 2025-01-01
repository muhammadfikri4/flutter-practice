import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/header/header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [HeaderContainer()],
        ),
      ),
    );
  }
}
