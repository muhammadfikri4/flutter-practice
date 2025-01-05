class ApiResponse<T> {
  final T? data;
  final String code;
  final int status;
  final String message;

  ApiResponse({
    this.data,
    required this.message,
    required this.status,
    required this.code,
  });
}
