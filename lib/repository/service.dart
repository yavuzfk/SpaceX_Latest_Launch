import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:spacex_latest_launch/models/get_model/spacex_data_get_model.dart';
import 'package:spacex_latest_launch/utily/string_items.dart';

class Service{
  final Dio _networkManager;

  Service() : _networkManager = Dio(BaseOptions(baseUrl: StringItems().baseUrl)); // For avoid using 'late'

  Future<List<SpaceXDataGetModel>?> fetchPostItems() async {
    final response = await _networkManager
        .get(StringItems().launchPath);

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        return datas.map((e) => SpaceXDataGetModel.fromJson(e)).toList();
      }
    } else {
      if (kDebugMode) {
        print(StringItems().httpErrorMessage);
      }
      return null;
    }
    return null;
  }
}