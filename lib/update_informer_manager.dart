import 'dart:js';

import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import 'api_service.dart';

class UpdateInformerManager extends ChangeNotifier {
  bool _versionIsUpToDate = false;
  final ApiService _apiService = ApiService();
  Future<void> upToDateOnTap({
    required String iosAppBundle,
    required String androidAppBundle,
    required String iosAppId,
  }) async {
    await StoreRedirect.redirect(
      androidAppId: androidAppBundle,
      iOSAppId: iosAppId,
    );

    await checkAppversion(iosAppBundle);
  }

  Future<void> checkAppversion(String iosBundleId) async {
    _versionIsUpToDate = await _apiService.checkAppstoreVersion(iosBundleId);
    notifyListeners();
  }

  bool get versionIsUpToDate => _versionIsUpToDate;
}
