import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:update_informer/src/app_store_model/app_store_model.dart';

class ApiService {
  Future<bool> checkAppstoreVersion(String iosBundleId) async {
    AppStoreModel? appStoreModel;
    Response response = await Dio()
        .post("https://itunes.apple.com/lookup?bundleId=$iosBundleId");

    if (response.statusCode == HttpStatus.ok) {
      appStoreModel = await compute(
          AppStoreModel.fromJson, jsonDecode(response.data)! as JsonType);
    }
    debugPrint(
        "AppStore version number: ${appStoreModel?.results?.first.version}");
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    debugPrint("In app version number: ${packageInfo.version}");
    debugPrint("Version eşit mi değil mi");

    if (packageInfo.version == appStoreModel?.results?.first.version) {
      debugPrint("Eşit");
      return true;
    } else {
      debugPrint("Eşit değil");
      return false;
    }
  }
}
