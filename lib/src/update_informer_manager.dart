import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import '../update_informer.dart';

class UpdateInformerManager extends ChangeNotifier {
  UpdateInformerManager(String iosBundleId, String countryCode) {
    initialize(iosBundleId, countryCode);
  }
  void initialize(String iosBundleId, String countryCode) async {
    await checkAppversion(iosBundleId, countryCode);
    debugPrint("Init worked");
  }

  bool _versionIsUpToDate = true;
  final ApiService _apiService = ApiService();

  Future<void> upToDateOnTap({
    required String iosAppBundle,
    required String androidAppBundle,
    required String iosAppId,
    required String countryCode,
    bool debugTrue = true,
  }) async {
    await StoreRedirect.redirect(
      androidAppId: androidAppBundle,
      iOSAppId: iosAppId,
    );

    await checkAppversion(iosAppBundle, countryCode, debugTrue: debugTrue);
  }

  Future<void> checkAppversion(String iosBundleId, String countryCode,
      {bool debugTrue = true}) async {
    _versionIsUpToDate = await _apiService
        .checkAppstoreVersion(iosBundleId, countryCode, debugTrue: debugTrue);

    if (!_versionIsUpToDate) {
      notifyListeners();
    }
  }

  bool get versionIsUpToDate => _versionIsUpToDate;
}
