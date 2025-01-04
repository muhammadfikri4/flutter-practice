import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/card.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 16,
          children: [
            EventCard(
              isActive: true,
            ),
            EventCard(
              isActive: false,
            ),
            EventCard(
              isActive: false,
            ),
            EventCard(
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
