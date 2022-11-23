import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controller/cart_controller.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CartController controller = Get.put(CartController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/cart.json', height: 300),
      ),
    );
  }
}
