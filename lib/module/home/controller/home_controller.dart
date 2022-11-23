import 'package:get/get.dart';

class HomeController extends GetxController {
  int number = 0;
  var name = 'Danu Septian'.obs;

  void addNumber() {
    number++;
    update();
  }

  void decreaseNumber() {
    number--;
    update();
  }

  void resetNumber() {
    number = 0;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
