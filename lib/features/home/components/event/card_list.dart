import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/card.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        spacing: 10,
        children: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming Event',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'See All',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Icon(
                      Icons.arrow_right_sharp,
                      color: Colors.grey,
                      size: 24,
                    )
                  ],
                )
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 4,
              children: [
                EventCard(
                  title: 'International Conference',
                  location: 'New York, USA, 2023',
                ),
                EventCard(
                  title: 'International Conference',
                  location: 'New York, USA, 2023',
                ),
                EventCard(
                  title: 'International Conference',
                  location: 'New York, USA, 2023',
                ),
                EventCard(
                  title: 'International Conference',
                  location: 'New York, USA, 2023',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
