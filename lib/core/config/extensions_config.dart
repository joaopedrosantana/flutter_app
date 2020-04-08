import 'package:dio/dio.dart';
import 'package:flutterapp/data/mappers/mapper.dart';
import 'package:flutterapp/data/model/response_model.dart';

extension ReturnResponse<T, O> on Response<T> {
  Future<ResponseModel<O>> format<O>([Mapper<T, O> mapper]) async {
    var response;
    if (this.statusCode == 200) {
      if (this.data != null) if (mapper == null)
        response = SuccessResponse<O>(null);
      else
        response = SuccessResponse<O>(mapper.transform(this.data));
      else
        response =
            ErrorResponse<O>(RequestError(this.statusCode, this.statusMessage));
    } else {
      var error = this.data;
      //CAPTURAR MENSAGEM DE ACORDO COM API
      response = ErrorResponse<O>(RequestError(10, "Erro"));
    }
    return response;
  }
}
