import 'package:flutter/material.dart';

class ContainerPadding extends StatelessWidget {
  final Widget child;
  const ContainerPadding({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: child,
    );
  }
}
