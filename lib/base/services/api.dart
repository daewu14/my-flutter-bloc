import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'result.dart';
import '../../x_src/my_res.dart';
import '../../x_utils/my_device_info.dart';

export 'result.dart';

/// createdby Daewu Bintara
/// Wednesday, 3/3/21

class Api {
  static final String _baseUrl = MyConfig.BASE_URL;
  static final String _apiVersion = "";
  static final String _apiName = "/api";
  static final String urlToCall = "$_baseUrl$_apiVersion$_apiName";
  static final int _connectionTimeOut = 5000;
  static final int _receiveTimeOut = 3000;

  bool _isMultipart = false;

  Dio _call = Dio();

  Result _result = Result(
      status: false,
      isError: false,
      text: ""
  );

  /// Private init to Instantiating.
  /// set all base [Header].
  /// set all base
  Future<bool> _init() async {
    _call.options.baseUrl = urlToCall;
    _call.options.connectTimeout = _connectionTimeOut;
    _call.options.receiveTimeout = _receiveTimeOut;
    var deviceId = await MyDeviceInfo().deviceID();
    var deviceName = await MyDeviceInfo().deviceName();
    var deviceModel = await MyDeviceInfo().deviceModel();
    var deviceSystemVersion = await MyDeviceInfo().deviceSystemVersion();
    var langCode = MyDeviceInfo().langCode();

    if (!_isMultipart) {
      _call.options.headers['Content-Type'] = "application/x-www-form-urlencoded";
      _call.options.headers['content-type'] = "application/x-www-form-urlencoded";
      _call.options.headers['Accept'] = "application/json";
      _call.options.headers['accept'] = "application/json";
    }

    _call.options.headers['platform'] = Platform.operatingSystem;
    _call.options.headers['operation-system'] = Platform.operatingSystem;
    _call.options.headers['device-id'] = deviceId;
    _call.options.headers['lang'] = langCode;
    _call.options.headers['device-name'] = deviceName;
    _call.options.headers['device-model'] = deviceModel;
    _call.options.headers['app-version'] = MyDeviceInfo().appVersionCode();
    _call.options.headers['device-system-version'] = deviceSystemVersion;

    String token = GetStorage().read(MyConfig.TOKEN_STRING_KEY);
    if(token != null) _call.options.headers['Authorization'] = "Bearer $token";

    _showLogWhenDebug("Header", _call.options.headers.toString());
    return true;
  }

  /// call API.
  /// return [Result] model.
  /// Method GET.
  Future<Result> getResult(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    Response res;
    _showLogWhenDebug("GET URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.get(endPoint, queryParameters: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      _result =  Result.fromMap(res.data);
      _result.body = res.data;
      return _result;
    } catch (e) {
      _result.isError = true;
      _showLogWhenDebug("Error Response", "${e.toString()}");
      return _result;
    }
  }

  /// call API.
  /// return [Result] model.
  /// Method POST.
  Future<Result> postResult(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    Response res;

    _showLogWhenDebug("POST URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");

    try {
      res = await _call.post(endPoint, data: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      _result =  Result.fromMap(res.data);
      _result.body = res.data;
      return _result;
    } catch (e) {
      _result.isError = true;
      _showLogWhenDebug("Error Response", "${e.toString()}");
      return _result;
    }
  }

  /// call API.
  /// return [Result] model.
  /// Method POST.
  Future<Result> postMultipartResult(
      {@required String endPoint = "", FormData data}) async {
    // data = data ?? {};
    _isMultipart = true;

    await _init();
    Response res;

    _showLogWhenDebug("POST URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.fields}");

    try {
      res = await _call.post(endPoint, data: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      _result =  Result.fromMap(res.data);
      _result.body = res.data;
      return _result;
    } catch (e) {
      _result.isError = true;
      _showLogWhenDebug("Error Response", "${e.toString()}");
      return _result;
    }
  }

  /// call API.
  /// return [BaseResponse] model.
  /// Method GET.
  Future<BaseResponse> getManualUri(
      {@required String url = "", @required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    var res;
    _call.options.baseUrl = url;
    _call.options.connectTimeout = _connectionTimeOut;
    _call.options.receiveTimeout = _receiveTimeOut;
    _showLogWhenDebug("GET URL", "$url$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.get(endPoint, queryParameters: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      return BaseResponse(status: Status.isOk, text: "", data: res);
    } catch (e) {
      return BaseResponse(
          status: Status.catchError, text: e.toString(), data: null);
    }
  }

  /// call API.
  /// return [BaseResponse] model.
  /// Method GET.
  Future<BaseResponse> getManual(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    var res;
    _showLogWhenDebug("GET URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.get(endPoint, queryParameters: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      return BaseResponse(status: Status.isOk, text: "", data: res);
    } catch (e) {
      return BaseResponse(
          status: Status.catchError, text: e.toString(), data: null);
    }
  }

  /// call API.
  /// return [BaseResponse] model.
  /// Method POST.
  Future<BaseResponse> postManual(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    var res;
    _showLogWhenDebug("POST URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.post(endPoint, data: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      return BaseResponse(status: Status.isOk, text: "", data: res);
    } catch (e) {
      return BaseResponse(
          status: Status.catchError, text: e.toString(), data: null);
    }
  }

  /// call API.
  /// return [BaseResponse] model.
  /// Method PUT.
  Future<BaseResponse> putManual(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    var res;
    _showLogWhenDebug("PUT URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.put(endPoint, data: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      return BaseResponse(status: Status.isOk, text: "", data: res);
    } catch (e) {
      return BaseResponse(
          status: Status.catchError, text: e.toString(), data: null);
    }
  }

  /// call API.
  /// return [BaseResponse] model.
  /// Method DELETE.
  Future<BaseResponse> deleteManual(
      {@required String endPoint = "", Map<String, dynamic> data}) async {
    data = data ?? {};
    await _init();
    var res;
    _showLogWhenDebug("DELETE URL", "$urlToCall$endPoint");
    _showLogWhenDebug("PARAMS", "${data.toString()}");
    try {
      res = await _call.delete(endPoint, data: data);
      _showLogWhenDebug("Result", "${res.data.toString()}");
      return BaseResponse(status: Status.isOk, text: "", data: res);
    } catch (e) {
      return BaseResponse(
          status: Status.catchError, text: e.toString(), data: null);
    }
  }

  /// TO SHOW THE LOG WHEN DEBUG MODE TRUE
  _showLogWhenDebug(String status, String e) {
    if (kDebugMode) log("$status => ${e.toString()}", name: MyConfig.APP_NAME);
  }
}

enum Status { isOk, catchError, timeOut, errorParsing }

class BaseResponse {
  Status status;
  String text;
  Response data;

  BaseResponse({this.data, this.status, this.text});
}