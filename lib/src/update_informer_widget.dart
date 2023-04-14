import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_redirect/store_redirect.dart';

import '../update_informer.dart';

class UpdateInformerWidget extends StatefulWidget {
  const UpdateInformerWidget({
    Key? key,
    required this.androidAppBundle,
    required this.iosAppBundle,
    required this.iosAppId,
    this.backgroundColor,
    this.informationText,
    this.radius,
  }) : super(key: key);

  final String androidAppBundle;
  final String iosAppId;
  final String iosAppBundle;
  final String? informationText;
  final Color? backgroundColor;
  final double? radius;

  @override
  State<UpdateInformerWidget> createState() => _UpdateInformerWidgetState();
}

class _UpdateInformerWidgetState extends State<UpdateInformerWidget> {
  @override
  void initState() {
    initialize(widget.iosAppBundle);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !versionIsUpToDate,
      child: InkWell(
        onTap: () => upToDateOnTap(
            iosAppBundle: widget.iosAppBundle,
            androidAppBundle: widget.androidAppBundle,
            iosAppId: widget.iosAppId),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? Colors.amber.shade700,
            borderRadius: BorderRadius.circular(widget.radius ?? 15),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.informationText ??
                    "Yeni versiyon mevcut. Yüklemek için dokunun...",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              ),
              Icon(
                Icons.touch_app_rounded,
                color: Theme.of(context)
                    .iconTheme
                    .copyWith(color: Colors.white)
                    .color,
                size: 20,
              )
            ],
          ),
        ),
      ),
    );
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

    if (!_versionIsUpToDate) {
      setState(() {});
    }
  }

  bool get versionIsUpToDate => _versionIsUpToDate;
}
