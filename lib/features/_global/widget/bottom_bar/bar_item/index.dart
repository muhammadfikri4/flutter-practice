import 'package:flutter/material.dart';

class IconProps {
  final IconData icon;
  final double size;

  IconProps({required this.icon, this.size = 24.0});
}

class BottomBarItem extends StatelessWidget {
  final IconProps icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;
  const BottomBarItem(
      {super.key,
      required this.icon,
      required this.label,
      required this.onTap,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Icon(
            icon.icon,
            size: icon.size,
            color: isActive
                ? const Color.fromRGBO(86, 105, 255, 1)
                : const Color.from(alpha: 0.4, red: 218, green: 218, blue: 218),
          ),
        ),
        Text(
          label,
          style: TextStyle(
              color: isActive
                  ? const Color.fromRGBO(86, 105, 255, 1)
                  : const Color.from(
                      alpha: 0.4, red: 218, green: 218, blue: 218)),
        ),
      ],
    );
  }
}
