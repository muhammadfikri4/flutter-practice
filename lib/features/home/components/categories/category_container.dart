import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/categories/category_item.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -20),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            spacing: 8,
            children: [
              CategoryItem(
                icon: Icon(
                  Icons.sports_basketball,
                  size: 24,
                  color: Colors.white,
                ),
                title: 'Sports',
                color: Colors.orange,
              ),
              CategoryItem(
                icon: Icon(
                  Icons.sports_football,
                  size: 24,
                  color: Colors.white,
                ),
                title: 'Football',
                color: Colors.blue,
              ),
              CategoryItem(
                icon: Icon(
                  Icons.sports_tennis,
                  size: 24,
                  color: Colors.white,
                ),
                title: 'Tennis',
                color: Colors.green,
              ),
              CategoryItem(
                icon: Icon(
                  Icons.sports_esports,
                  size: 24,
                  color: Colors.white,
                ),
                title: 'Esports',
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
