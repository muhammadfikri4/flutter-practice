import 'package:dio/dio.dart';
import 'package:flutter_practice/core/api/interface.dart';

httpRequest<Res>(String endpoint, HttpMethod method) {
  final Dio dio = Dio();

  switch (method) {
    case HttpMethod.get:
      return (
          {Map<String, dynamic>? queryParameters,
          Map<String, dynamic>? headers,
          String? path}) async {
        final response = await dio.get('$endpoint/$path',
            queryParameters: queryParameters,
            options: Options(headers: headers));
        return response.data;
      };
    case HttpMethod.post:
      return <T>(
          {Map<String, dynamic>? queryParameters,
          Map<String, dynamic>? headers,
          String? path,
          T? body}) async {
        return await dio.post('$endpoint/$path',
            queryParameters: queryParameters,
            options: Options(headers: headers),
            data: body);
      };
    case HttpMethod.put:
      return <T>(
          {Map<String, dynamic>? queryParameters,
          Map<String, dynamic>? headers,
          String? path,
          T? body}) async {
        return await dio.put('$endpoint/$path',
            queryParameters: queryParameters,
            options: Options(headers: headers),
            data: body);
      };
    case HttpMethod.patch:
      return <T>(
          {Map<String, dynamic>? queryParameters,
          Map<String, dynamic>? headers,
          String? path,
          T? body}) async {
        return await dio.patch('$endpoint/$path',
            queryParameters: queryParameters,
            options: Options(headers: headers),
            data: body);
      };
    case HttpMethod.delete:
      return <T>({Map<String, dynamic>? headers, String? path, T? body}) async {
        return await dio.delete('$endpoint/$path',
            options: Options(headers: headers), data: body);
      };
  }
}
