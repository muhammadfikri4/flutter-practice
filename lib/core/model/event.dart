import 'package:flutter_practice/core/api/api_response.dart';
// class Event {
//  String id;
//   String name;

//   Event({
//     required this.id,
//     required this.name,
//   });

// }

// class EventResponse extends ApiResponse<List<Event>> {

//   factory EventResponse.fromJson(Map<String, dynamic> json) {
//     return EventResponse(
//       message: json['message'],
//       data: json['data'],
//       status: json['status'],
//       code: json['code'],
//     );
//   }
// }

class Event {
  final String id;
  final String name;

  Event({
    required this.id,
    required this.name,
  });

  // Tambahkan fungsi untuk mengubah JSON ke Event
  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }
}

class EventResponse extends ApiResponse<List<Event>> {
  EventResponse({
    required String message,
    required List<Event>? data,
    required int status,
    required String code,
  }) : super(
          message: message,
          data: data,
          status: status,
          code: code,
        );

  // Factory method untuk parsing JSON
  factory EventResponse.fromJson(Map<String, dynamic> json) {
    // Parsing data ke List<Event>
    final data = (json['data'] as List<dynamic>)
        .map((eventJson) => Event.fromJson(eventJson))
        .toList();

    return EventResponse(
      message: json['message'] as String,
      data: data,
      status: json['status'],
      code: json['code'],
    );
  }
}
