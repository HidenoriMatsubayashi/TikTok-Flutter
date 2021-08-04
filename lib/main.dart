import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_flutter/screens/feed_screen.dart';
import 'package:tiktok_flutter/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MaterialApp(
    scrollBehavior: MyCustomScrollBehavior(),
    debugShowCheckedModeBanner: false,
    home: FeedScreen(),
  ));
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
