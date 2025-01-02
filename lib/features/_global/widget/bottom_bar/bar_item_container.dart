import 'package:flutter/material.dart';
import 'package:flutter_practice/features/_global/config/menus.dart';
import 'package:flutter_practice/features/_global/widget/bottom_bar/bar_item/index.dart';
import 'package:go_router/go_router.dart';

class BarItemContainer extends StatelessWidget {
  const BarItemContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(menusConfig.length, (index) {
        final item = menusConfig[index];
        return BottomBarItem(
          icon: IconProps(icon: item['icon'], size: 28),
          label: item['label'],
          onTap: () => context.go(item['route']),
          isActive: item['route'] == location,
        );
      }),
    );
  }
}
