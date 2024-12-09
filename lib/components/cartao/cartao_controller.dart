import 'package:get/get.dart';

class CartaoController extends GetxController {
  RxInt counter = 0.obs;

  void decrement() {
    counter.value--;
  }

  void increment() {
    counter.value++;
  }
}
