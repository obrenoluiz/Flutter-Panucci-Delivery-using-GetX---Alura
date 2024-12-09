import 'package:get/get.dart';

class CartaoController extends GetxController {
  RxInt counter = 0.obs;

  void decrement () {
    if (counter.value > 0) {
      counter.value--;
    }
  }

  void increment () {
    counter.value++;
  }
}