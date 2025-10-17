import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../update_informer.dart';

class UpdateInformerWidget extends StatelessWidget {
  const UpdateInformerWidget({
    super.key,
    required this.androidAppBundle,
    required this.iosAppBundle,
    required this.iosAppId,
    this.backgroundColor,
    this.informationText,
    this.radius,
    required this.countryCode,
    this.debugTrue = true,
  });

  final String androidAppBundle;
  final String iosAppId;
  final String iosAppBundle;
  final String? informationText;
  final Color? backgroundColor;
  final double? radius;
  final bool debugTrue;
  final String countryCode;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UpdateInformerManager(iosAppBundle, countryCode),
      builder: (context, _) => Visibility(
        visible: !context.watch<UpdateInformerManager>().versionIsUpToDate,
        child: InkWell(
          onTap: () => context.read<UpdateInformerManager>().upToDateOnTap(
                iosAppBundle: iosAppBundle,
                androidAppBundle: androidAppBundle,
                iosAppId: iosAppId,
                debugTrue: debugTrue,
                countryCode: countryCode,
              ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: backgroundColor ?? Colors.amber.shade700,
              borderRadius: BorderRadius.circular(radius ?? 15),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  informationText ??
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
      ),
    );
  }
}
