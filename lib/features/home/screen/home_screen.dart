import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/core/model/static.dart';
import 'package:flutter_practice/features/home/components/event/card_list.dart';
import 'package:flutter_practice/features/home/components/header/header_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeScreen> {
  Welcome? data;
  @override
  void initState() {
    super.initState();
    getData().then((res) {
      if (res != null) {
        final welcome = Welcome.fromJson(res);
        setState(() {
          data = welcome;
        });
      } else {
        print('No data fetched!');
      }
    });
  }

  getData() async {
    try {
      final Dio dio = Dio();
      final Response res = await dio.get('http://localhost:5555');
      // final decode = jsonDecode(res.data);
      // print('decode: $decode');
      return res.data;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    print('data: ${data?.message}');
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            const HeaderContainer(),
            const EventCardList(),
            Text(
              data?.message ?? 'Loading...',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
