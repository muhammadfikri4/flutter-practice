import 'package:flutter_practice/features/_global/widget/bottom_bar/index.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatelessWidget {
  final Widget children;

  const RootScreen({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [children, const BottomBar()],
      ),
    );
  }
}
