import 'package:flutter/material.dart';

import 'package:update_informer/update_informer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Stack(
          children: [
            UpdateInformerWidget(
              androidAppBundle: "your android app bundle here",
              iosAppBundle: "your ios app bundle here",
              iosAppId: "your app id here",
              countryCode: "your country code here",
            ),
            Center(
              child: Text('Hello World. Is my app up to date?'),
            ),
          ],
        ),
      ),
    );
  }
}
