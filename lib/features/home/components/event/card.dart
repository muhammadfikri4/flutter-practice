import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/image_card.dart';

class EventCard extends StatefulWidget {
  final String title;
  final String location;
  const EventCard({
    super.key,
    required this.title,
    required this.location,
  });

  @override
  State<EventCard> createState() => EventState();
}

class EventState extends State<EventCard> {
  late bool active = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Color.from(alpha: 0.3, red: 0, green: 0, blue: 0),
                blurStyle: BlurStyle.normal,
                blurRadius: 5,
                offset: Offset(0, 0),
                spreadRadius: 0.5)
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            ImageCard(
              isActive: active,
              onTap: () => setState(() => active = !active),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Atur ke kiri
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4), // Memberi jarak kecil antar elemen
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 20,
                        color: Colors.grey,
                      ),
                      const SizedBox(width: 4), // Jarak antara ikon dan teks
                      Text(
                        widget.location,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
