import 'package:getx_mvvm/data/responses/status.dart';

class ApiResponse<T> {
  Status? status;
  String? message;
  T? data;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data) : status = Status.COMPLETED;
  ApiResponse.failed(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : ${status} /n Data : ${data} /n Message : ${message}";
  }
}
