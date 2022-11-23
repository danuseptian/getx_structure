import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure/module/login/view/login_view.dart';

import 'util/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme,
      home: LoginView(),
    );
  }
}
