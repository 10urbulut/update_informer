import 'package:flutter/material.dart';
import 'package:store_redirect/store_redirect.dart';

import '../update_informer.dart';

class UpdateInformerManager extends ChangeNotifier {
  UpdateInformerManager(String iosBundleId) {
    initialize(iosBundleId);
  }
  void initialize(iosBundleId) async {
    await checkAppversion(iosBundleId);
    debugPrint("Init worked");
  }

  bool _versionIsUpToDate = true;
  final ApiService _apiService = ApiService();

  Future<void> upToDateOnTap({
    required String iosAppBundle,
    required String androidAppBundle,
    required String iosAppId,
    bool debugTrue = true,
  }) async {
    await StoreRedirect.redirect(
      androidAppId: androidAppBundle,
      iOSAppId: iosAppId,
    );

    await checkAppversion(iosAppBundle, debugTrue: debugTrue);
  }

  Future<void> checkAppversion(String iosBundleId,
      {bool debugTrue = true}) async {
    _versionIsUpToDate = await _apiService.checkAppstoreVersion(iosBundleId,
        debugTrue: debugTrue);

    if (!_versionIsUpToDate) {
      notifyListeners();
    }
  }

  bool get versionIsUpToDate => _versionIsUpToDate;
}
