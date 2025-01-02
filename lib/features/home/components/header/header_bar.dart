import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.menu,
              size: 32,
              color: Colors.white,
            ),
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Current Location',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(255, 255, 255, 0.7)),
                  ),
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    size: 32,
                    color: Colors.white,
                  ),
                ],
              ),
              Text(
                'New York, USA',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.1),
                borderRadius: BorderRadius.all(Radius.circular(100))),
            width: 35,
            height: 35,
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
