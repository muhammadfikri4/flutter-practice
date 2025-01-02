import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/categories/category_container.dart';
import 'package:flutter_practice/features/home/components/header/header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            const HeaderContainer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: const CategoryContainer(),
            )
          ],
        ),
      ),
    );
  }
}
