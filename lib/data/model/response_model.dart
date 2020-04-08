class ResponseModel<T> {
  ResponseModel._();
  factory ResponseModel.success(T data) = SuccessResponse<T>;
  factory ResponseModel.error(RequestError data) = ErrorResponse<T>;
}

class ErrorResponse<T> extends ResponseModel<T> {
  ErrorResponse(this.value) : super._();

  final RequestError value;
}

class SuccessResponse<T> extends ResponseModel<T> {
  SuccessResponse(this.value) : super._();

  final T value;
}

class RequestError {
  final String message;
  final int status;

  RequestError(this.status, this.message);
}
