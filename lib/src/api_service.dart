import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../update_informer.dart';

class ApiService {
  final Dio _dio = Dio();
  PackageInfo? _packageInfo;
  Future<bool> checkAppstoreVersion(String iosBundleId) async {
    AppStoreModel? appStoreModel;
    Response response = await _dio
        .post("https://itunes.apple.com/lookup?bundleId=$iosBundleId");

    if (response.statusCode == HttpStatus.ok) {
      appStoreModel =
          AppStoreModel.fromJson(jsonDecode(response.data)! as JsonType);
    }
    debugPrint(
        "AppStore version number: ${appStoreModel?.results?.first.version}");
    _packageInfo = await PackageInfo.fromPlatform();

    debugPrint("In app version number: ${_packageInfo?.version}");
    debugPrint("Version eşit mi değil mi");

    if (_packageInfo?.version == appStoreModel?.results?.first.version) {
      debugPrint("Eşit");
      return true;
    }

    debugPrint("Eşit değil");
    return false;
  }

  String? get packageVersion => _packageInfo?.version;
}
