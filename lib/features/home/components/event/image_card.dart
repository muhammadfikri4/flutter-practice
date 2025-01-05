import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final bool isActive;
  final Function()? onTap;

  const ImageCard({super.key, required this.isActive, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/core/assets/image/event.png'),
            repeat: ImageRepeat.noRepeat,
            fit: BoxFit.cover),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: 250,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.7),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '10',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: Color.fromRGBO(240, 99, 90, 1),
                  ),
                ),
                Text(
                  'June',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color.fromRGBO(240, 99, 90, 1),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.7),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Icon(
                isActive ? Icons.bookmark : Icons.bookmark_outline,
                color: isActive
                    ? const Color.fromRGBO(240, 99, 90, 1)
                    : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
