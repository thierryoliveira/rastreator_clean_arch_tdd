abstract class IHttpClient {
  Future<HttpResponse> get(String url);
  Future<HttpResponse> post(String url, {Map<String, dynamic>? body});
  Future<HttpResponse> put(String url, {Map<String, dynamic>? body});
  Future<HttpResponse> patch(String url, {Map<String, dynamic>? body});
}

class HttpResponse {
  final dynamic data;
  final int? statusCode;

  HttpResponse({required this.data, required this.statusCode});
}
