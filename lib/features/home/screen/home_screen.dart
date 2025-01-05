import 'package:flutter/material.dart';
import 'package:flutter_practice/features/home/components/event/card_list.dart';
import 'package:flutter_practice/features/home/components/event/nearby/nearby_event_list.dart';
import 'package:flutter_practice/features/home/components/header/header_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            HeaderContainer(),
            EventCardList(),
            NearbyEventList(),
          ],
        ),
      ),
    );
  }
}
