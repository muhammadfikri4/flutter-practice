import 'package:dio/dio.dart';
import 'package:flutter_practice/core/model/event.dart';

getEvent() async {
  try {
    final Dio dio = Dio();
    final Response res = await dio.get('http://localhost:5555/payment-method');
    final data = res.data;
    return EventResponse.fromJson(data);
  } catch (e) {
    print(e);
  }
}
