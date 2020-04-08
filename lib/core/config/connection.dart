import 'package:dio/dio.dart';
import 'package:flutterapp/core/config/config.dart';
import 'package:flutterapp/core/config/http.dart';
import 'package:flutterapp/core/di/app_module.dart';

class Connection<T> {
  var httpClient = getIt<HttpClientConfig>();
  var _uri = "";
  var _enumMethod = EnumMethod.GET;
  var _body;

  Connection(String uri) {
    httpClient.headers.clear();
    _uri = Config.BASE_URL + uri;
  }

  //ULTIMO METODO A SER CHAMADO
  void addQuery(String key, dynamic value) {
    var uri = Uri.https("", _uri, <String, String>{key: value});
    _uri = uri.toString().replaceAll(":", "://"); //Bug Uri.https
  }

  void addPath(String path, String value) {
    try {
      var uri = _uri.replaceAll("{$path}", value);
      _uri = uri;
    } catch (ex) {
      print(ex.toString());
    }
  }

  void addHeader(String key, dynamic value) {
    httpClient.headers[key] = value;
  }

  void setMethod(EnumMethod method) {
    this._enumMethod = method;
  }

  void addBody(dynamic body) {
    this._body = body;
  }

  Future<Response<T>> execute<T>() async {
    print(_uri);
    Future<Response> resp;
    switch (_enumMethod) {
      case EnumMethod.POST:
        resp = httpClient.post(_uri, body: _body);
        break;
      case EnumMethod.GET:
        resp = httpClient.get(_uri);
        break;
      case EnumMethod.PUT:
        resp = httpClient.put(_uri, body: _body);
        break;
      case EnumMethod.DELETE:
        resp = httpClient.delete(_uri, body: _body);
    }
    Response<T> response = Response();
    await resp.then((value) {
      response.data = (value.data);
      response.headers = value.headers;
      response.request = value.request;
      response.statusCode = value.statusCode;
      response.statusMessage = value.statusMessage;
      response.redirects = value.redirects;
      response.extra = value.extra;
    }).catchError((e) {
      response.data = e.response.data;
      response.headers = e.response.headers;
      response.request = e.request;
      response.statusCode = e.response.statusCode;
      response.statusMessage = e.response.statusMessage;
      response.redirects = e.response.redirects;
      response.extra = e.response.extra;
    });

    return response;
  }
}
