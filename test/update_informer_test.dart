import 'package:flutter_test/flutter_test.dart';

import 'package:update_informer/update_informer.dart';

void main() {
  const UpdateInformerWidget(
    androidAppBundle: "",
    iosAppBundle: "",
    iosAppId: "",
    countryCode: "",
  );
  var provider = UpdateInformerManager("", "");

  test('Check version', () {
    expect(false, provider.versionIsUpToDate);
  });
}
