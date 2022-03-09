import 'package:dio/dio.dart';
import 'package:rastreator/app/core/http/interfaces/ihttp.dart';

class HttpClientImplementation implements IHttpClient {
  final client = Dio();

  @override
  Future<HttpResponse> get(String url) async {
    dynamic data = '';
    int? statusCode = 0;
    try {
      final response = await client.get(url);
      data = response.data;
      statusCode = response.statusCode;
    } on DioError catch (e) {
      data = e.response?.data;
      statusCode = e.response?.statusCode;
    } finally {
      return HttpResponse(data: data, statusCode: statusCode);
    }
  }

  @override
  Future<HttpResponse> post(String url, {Map<String, dynamic>? body}) async {
    dynamic data = '';
    int? statusCode = 0;
    dynamic response;
    try {
      if (body == null)
        response = await client.post(url);
      else
        response = await client.post(url, data: body);

      data = response.data;
      statusCode = response.statusCode;
    } on DioError catch (e) {
      statusCode = e.response?.statusCode;
    } finally {
      return HttpResponse(data: data, statusCode: statusCode);
    }
  }

  @override
  Future<HttpResponse> put(String url, {Map<String, dynamic>? body}) async {
    dynamic data = '';
    int? statusCode = 0;
    dynamic response;
    try {
      if (body == null)
        response = await client.put(url);
      else
        response = await client.put(url, data: body);

      data = response.data;
      statusCode = response.statusCode;
    } on DioError catch (e) {
      statusCode = e.response?.statusCode;
    } finally {
      return HttpResponse(data: data, statusCode: statusCode);
    }
  }

  @override
  Future<HttpResponse> patch(String url, {Map<String, dynamic>? body}) async {
    dynamic data = '';
    int? statusCode = 0;
    dynamic response;
    try {
      if (body == null)
        response = await client.patch(url);
      else
        response = await client.patch(url, data: body);

      data = response.data;
      statusCode = response.statusCode;
    } on DioError catch (e) {
      statusCode = e.response?.statusCode;
    } finally {
      return HttpResponse(data: data, statusCode: statusCode);
    }
  }
}
