import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/categories/category_container.dart';
import 'package:flutter_practice/features/home/components/header/filter_section.dart';
import 'package:flutter_practice/features/home/components/header/header_bar.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // clipBehavior: Clip.none,
        children: [
          Container(
            // height: 260,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(73, 67, 236, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                )),
            child: const SafeArea(
              child: Column(
                spacing: 20,
                children: [
                  HeaderBar(),
                  FilterSection(),
                  // CategoryContainer(),
                ],
              ),
            ),
          ),
          // const CategoryContainer()
          const CategoryContainer()
        ],
      ),
    );
  }
}
