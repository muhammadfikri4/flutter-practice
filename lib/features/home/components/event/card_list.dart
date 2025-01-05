import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/card.dart';
import 'package:flutter_practice/features/home/components/title_redirect.dart';

class EventCardList extends StatelessWidget {
  const EventCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 14),
      child: const Column(
        spacing: 10,
        children: [
          TitleRedirect(
            title: 'Upcoming Events',
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
