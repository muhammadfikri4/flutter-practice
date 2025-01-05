import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/nearby/nearby_card.dart';
import 'package:flutter_practice/features/home/components/title_redirect.dart';

class NearbyEventList extends StatelessWidget {
  const NearbyEventList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        spacing: 16,
        children: [
          const TitleRedirect(
            title: 'Nearby You',
            action: ActionButton(
                title: 'See All',
                icon: Icon(
                  Icons.arrow_right_sharp,
                  color: Colors.grey,
                  size: 24,
                ),
                to: '/'),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(right: 14),
              child: const Column(
                spacing: 16,
                children: [
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                  NearbyCard(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
