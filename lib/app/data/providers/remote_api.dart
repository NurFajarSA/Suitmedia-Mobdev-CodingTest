import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:km_test/app/data/models/user.dart';
import 'package:km_test/core/values/strings.dart';

class RemoteApi {
  Future<List<User>> getUserList(int page, int perPage) async => http
      .get(
        _ApiUrlBuilder.userList(page, perPage),
      )
      .mapFromResponse<List<User>, List<dynamic>>(
        (jsonArray) => _parseItemListFromJsonArray(
          jsonArray,
          (jsonObject) => User.fromJson(jsonObject),
        ),
      );

  List<T> _parseItemListFromJsonArray<T>(
    List<dynamic> jsonArray,
    T Function(dynamic object) mapper,
  ) =>
      jsonArray.map(mapper).toList();
}

class _ApiUrlBuilder {
  static const _url = "${AppStrings.baseUrl}/users";

  static Uri userList(
    int page,
    int perPage,
  ) =>
      Uri.parse(
        '$_url?'
        'page=$page'
        '&per_page=$perPage',
      );
}

extension on Future<http.Response> {
  Future<R> mapFromResponse<R, T>(R Function(T) jsonParser) async {
    try {
      final response = await this;
      if (response.statusCode == 200) {
        return jsonParser(jsonDecode(response.body)['data']);
      } else {
        throw GenericHttpException();
      }
    } on SocketException {
      throw NoConnectionException();
    }
  }
}

class GenericHttpException implements Exception {
  final String message;

  GenericHttpException({this.message = "An error occurred"});

  @override
  String toString() => message;
}

class NoConnectionException implements Exception {
  final String message;

  NoConnectionException({this.message = "No connection"});

  @override
  String toString() => message;
}
