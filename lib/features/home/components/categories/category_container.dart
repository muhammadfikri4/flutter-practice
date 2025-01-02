import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/categories/category_item.dart';

// final List<Map<String, dynamic>> menusConfig = [
//   {'label': 'Home', 'route': '/', 'icon': Icons.explore},
//   {'label': 'Event', 'route': '/event', 'icon': Icons.event},
//   {'label': 'Map', 'route': '/map', 'icon': Icons.map},
//   {'label': 'Profile', 'route': '/profile', 'icon': Icons.person},
// ];

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
    );
  }
}
