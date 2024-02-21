import 'dart:convert';
import 'package:dio/dio.dart';

import '../../const/app_url.dart';

class NetworkClient {
  static final instance = NetworkClient();
  NetworkClient._();
  Dio dio = Dio(
    BaseOptions(
      receiveDataWhenStatusError: true,
      // connectTimeout: const Duration(milliseconds: 30000),
      // receiveTimeout: const Duration(milliseconds: 30000),
      // sendTimeout: const Duration(milliseconds: 30000),
    ),
  )..interceptors.add(
      LogInterceptor(
        responseBody: true,
        requestBody: true,
      ),
    );
  NetworkClient();

  Future<dynamic> getData(
      {required String endPoint, required String token}) async {
    dio.options.headers = {
      'accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    print("url ${AppUrl.BASE_URL + endPoint}");
    try {
      final response = await dio.get(
        AppUrl.BASE_URL + endPoint,
      );
      print("json response ${response.data}");
      return response;
    } on DioException catch (e) {
      getDioError(
        e: e,
      );
    }
    return null;
  }

  Future postData({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    String? token,
    bool isApplicationJson = false,
    String searchBody = "",
  }) async {
    dio.options.headers = {
      'Content-Type':
          isApplicationJson ? "application/json" : "multipart/form-data",
      'Accept': 'application/json; charset=utf-8',
      'Authorization': 'Bearer $token',
    };
    if (token == null) {
      dio.options.headers = {
        'Content-Type': "multipart/form-data",
        'Accept': 'application/json; charset=utf-8',
      };
    }

    FormData formData = FormData.fromMap(body ?? {});
    try {
      final response = await dio.post((AppUrl.BASE_URL + endPoint),
          queryParameters: query,
          data: isApplicationJson ? jsonEncode(body) : formData);
      return response;
    } on DioException catch (e) {
      return getDioError(
        e: e,
      );
    }
  }



  getDioError({
    required DioException e,
  }) async {
    if (DioExceptionType.receiveTimeout == e.type ||
        DioExceptionType.connectionTimeout == e.type) {
      return 'Server is not reachable. Please verify your internet connection and try again';
    } else if (DioExceptionType.connectionError == e.type) {
      if (e.message!.contains('SocketException')) {
        return 'network error';
      }
    } else if (DioExceptionType.badResponse == e.type) {
      if (e.response != null && e.response?.statusCode == 400) {
        var res = e.response?.data;
        // if (res.runtimeType == String) {
        if (res.contains("Subscribtion isn't Active") ||
            res.contains("User isn't Active")) {

        } else {
          print("resssss $res");
          return "Eman $res";
        }
      } else if (e.response!.statusCode == 401) {
        return 'UnAthuntecated';
      } else if (e.response!.statusCode == 451) {
        return 'Status Code 451';
      } else if (e.response!.statusCode == 404) {
        return 'Server Not Found';
      } else if (e.response!.statusCode == 503) {
        return 'service unavilable';
      } else if (e.response!.statusCode == 500) {
        return 'Internal Server Error';
      }
      // else {
      //   return 'There are problem while connecting to server';
      // }
    } else {
      return 'Problem connecting to the server. Please try again.';
    }
  }
}
