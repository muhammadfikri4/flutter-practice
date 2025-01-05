class Welcome {
  final String message;

  Welcome({required this.message});

  factory Welcome.fromJson(Map<String, dynamic> json) {
    return Welcome(
      message: json['message'],
    );
  }
}
