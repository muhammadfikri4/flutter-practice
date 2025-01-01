import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/header/header_bar.dart';

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(73, 67, 236, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(35),
            bottomRight: Radius.circular(35),
          )),
      child: const HeaderBar(),
    );
  }
}
