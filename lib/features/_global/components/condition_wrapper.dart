import 'package:flutter/material.dart';

class ConditionWrapper extends StatelessWidget {
  final bool condition;
  final Widget child;
  const ConditionWrapper({
    super.key,
    required this.condition,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: condition ? child : null,
    );
  }
}
