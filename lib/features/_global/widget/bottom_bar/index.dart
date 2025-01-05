import 'package:flutter/material.dart';
import 'package:flutter_practice/features/_global/widget/bottom_bar/bar_item_container.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
            decoration:
                const BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Color.from(alpha: 0.09, red: 0, green: 0, blue: 0),
                  blurStyle: BlurStyle.normal,
                  blurRadius: 8,
                  offset: Offset(0, 0),
                  spreadRadius: 1)
            ]),
            height: 88,
            child: const BarItemContainer()));
  }
}
