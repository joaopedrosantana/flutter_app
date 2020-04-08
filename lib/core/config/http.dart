import 'package:dio/dio.dart';

class HttpClientConfig {
  Dio _client;
  Map<String, dynamic> headers = {};

  HttpClientConfig() {
    _client = new Dio();
  }

  Future<void> _interceptor() async {
    headers['Content-Type'] = 'application/json';
    _client.options.headers = headers;
  }

  Future<Response> get(String url) async {
    await _interceptor();
    return _client.get(url);
  }

  Future<Response> post(String url, {dynamic body}) async {
    await _interceptor();
    return _client.post(url, data: body);
  }

  Future<Response> put(String url, {dynamic body}) async {
    await _interceptor();
    return _client.put(url, data: body);
  }

  Future<Response> delete(String url, {dynamic body}) async {
    await _interceptor();
    return  _client.delete(url);
  }
}

enum EnumMethod { POST, GET, PUT, DELETE }
