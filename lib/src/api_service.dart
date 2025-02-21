import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../update_informer.dart';

class ApiService {
  final Dio _dio = Dio();
  PackageInfo? _packageInfo;
  Future<bool> checkAppstoreVersion(String iosBundleId, String countryCode,
      {bool debugTrue = true}) async {
    try {
      const url = "https://itunes.apple.com/lookup";
      AppStoreModel? appStoreModel;
      Response response = await _dio.get(url,
          queryParameters: {"bundleId": iosBundleId, "country": countryCode});

      if (response.statusCode == HttpStatus.ok) {
        appStoreModel =
            AppStoreModel.fromJson(jsonDecode(response.data)! as JsonType);
      }

      _packageInfo = await PackageInfo.fromPlatform();

      debugPrint("_packageInfo: ${_packageInfo?.version}");
      if (debugTrue) {
        debugPrint(url);
      }
      if (debugTrue) {
        debugPrint("In app version number: ${_packageInfo?.version}");
      }
      if (debugTrue) debugPrint("Version eşit mi değil mi");

      if (appStoreModel == null) {
        if (debugTrue) debugPrint("appStoreModel null");
        return true;
      }
      if (appStoreModel.results == null) {
        if (debugTrue) debugPrint("results null");

        return true;
      }
      if (appStoreModel.results!.isEmpty) {
        if (debugTrue) debugPrint("results empty");
        return true;
      }
      if (debugTrue) {
        debugPrint(
            "AppStore version number: ${appStoreModel.results?.first.version}");
      }

      debugPrint("appStoreModel: ${appStoreModel.results?.first.version}");
      if (_packageInfo?.version == appStoreModel.results?.first.version) {
        if (debugTrue) debugPrint("Eşit");
        return true;
      }

      if (debugTrue) debugPrint("Eşit değil");
      return false;
    } catch (e) {
      debugPrint(e.toString());
      return true;
    }
  }

  String? get packageVersion => _packageInfo?.version;
}
