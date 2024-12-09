import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class Snackbars {
  static getAddItem(Item item) {
    return Get.showSnackbar(
      GetSnackBar(
        title: "Item adicionado!",
        message: "${item.nome} foi adicionado ao carrinho.",
        duration: const Duration(seconds: 2),
      ),
    );
  }
  
  static getRemoveItem(Item item) {
    return Get.showSnackbar(
      GetSnackBar(
        title: "Item removido!",
        message: "${item.nome} foi removido do seu carrinho.",
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
