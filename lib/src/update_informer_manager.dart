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
  }) async {
    await StoreRedirect.redirect(
      androidAppId: androidAppBundle,
      iOSAppId: iosAppId,
    );

    await checkAppversion(iosAppBundle);
  }

  Future<void> checkAppversion(String iosBundleId) async {
    _versionIsUpToDate = await _apiService.checkAppstoreVersion(iosBundleId);
    await Future.delayed(const Duration(seconds: 3));
    notifyListeners();
  }

  bool get versionIsUpToDate => _versionIsUpToDate;
}
