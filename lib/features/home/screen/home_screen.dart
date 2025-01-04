import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/categories/category_container.dart';
import 'package:flutter_practice/features/home/components/event/card_list.dart';
import 'package:flutter_practice/features/home/components/header/header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            HeaderContainer(),
            CategoryContainer(),
            EventCardList(),
          ],
        ),
      ),
    );
  }
}
