import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'HomePage.dart';
import 'ProductPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(), transition: Transition.zoom),
        GetPage(
            name: '/product',
            page: () => ProductPage(),
            transition: Transition.zoom)
      ],
    );
  }
}
