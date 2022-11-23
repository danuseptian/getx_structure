import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_structure/module/login/view/login_view.dart';

import '../../../util/constant.dart';
import '../controller/home_controller.dart';
import '../widget/getbuilder_example.dart';
import '../widget/obx_example.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.offAll(() => LoginView());
            },
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        title: Text('Getx Implementation'),
      ),
      body: Container(
        padding: EdgeInsets.all(defaultPadding),
        child: ListView(
          children: [
            GetBuilderExample(),
            Divider(color: Colors.black),
            ObxExample(),
          ],
        ),
      ),
    );
  }
}
