import 'package:get/get.dart';
import 'package:panucci_delivery/models/item.dart';

class Snackbars {
  static getAddItem(Item item) {
    return Get.showSnackbar(
      GetSnackBar(
        title: "Item adicionado!",
        message: "${item.nome} foi adicionado ao carrinho.",
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
      ),
    );
  }
  
  static getRemoveItem(Item item) {
    return Get.showSnackbar(
      GetSnackBar(
        title: "Item removido!",
        message: "${item.nome} foi removido do seu carrinho.",
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
      ),
    );
  }

  static getPayment() {
    return Get.showSnackbar(
      const GetSnackBar(
        title: "Pagamento realizado!",
        message: "Obrigado pela preferência.",
        duration: Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
      ),
    );
  }
}
