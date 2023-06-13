import 'package:flutter/material.dart';

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return "$_message$_prefix";
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message]) : super(message, "No Internet");
}

class RequestTimeOutExceptions extends AppExceptions {
  RequestTimeOutExceptions([String? message])
      : super(message, "Request Time out");
}
