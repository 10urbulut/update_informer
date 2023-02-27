part of update_informer;

class ApiService {
  final Dio _dio = Dio();
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
