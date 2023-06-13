import 'dart:convert';
import 'dart:io';
import 'package:getx_mvvm/data/exceptions.dart';
import 'package:http/http.dart' as http;
import 'package:getx_mvvm/data/responses/network/base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getAPI(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = responseChk(response);
    } on SocketException {
      throw InternetExceptions();
    } on RequestTimeOutExceptions {
      throw RequestTimeOutExceptions();
    }

    return responseJson;
  }

  @override
  Future postApi(data, String url) async {
    dynamic responseJson;
    try {
      final response = await http.post(Uri.parse(url), body: jsonEncode(data));
      responseJson = responseChk(response);
    } on SocketException {
      throw InternetExceptions();
    } on RequestTimeOutExceptions {
      throw RequestTimeOutExceptions();
    }

    return responseJson;
  }
}

dynamic responseChk(http.Response response) {
  switch (response.statusCode) {
    case 200:
      return jsonDecode(response.body);
  }
}
