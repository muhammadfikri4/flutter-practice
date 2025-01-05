import 'package:flutter/material.dart';

class NearbyCard extends StatelessWidget {
  const NearbyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color.from(alpha: 0.09, red: 0, green: 0, blue: 0),
              blurStyle: BlurStyle.normal,
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 0.05),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: double.infinity,
      // padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              top: 10,
            ),
            child: Image.asset(
              'lib/core/assets/image/event.png',
              width: 100,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 2,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Wed, Sep 27, 2023',
                        style: TextStyle(
                            color: Color.fromRGBO(73, 67, 236, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.bookmark_outline,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        'Jo Malone Londons',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Mother Days Presentation',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.grey,
                        size: 20,
                      ),
                      Text(
                        'Radius Gallery',
                        style: TextStyle(
                            color: Color.fromRGBO(80, 77, 77, 1),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
