import 'dart:async';

import 'package:get/get.dart';
import 'package:panucci_delivery/controllers/carrinho_controller.dart';

class ServicesManager {
    static final servicesInitialized = Completer<void>();
  
    static Future<void> init() async {
      Get.put(CarrinhoController());
      
      if (!servicesInitialized.isCompleted) {
        servicesInitialized.complete();
      }
    }
  }
  