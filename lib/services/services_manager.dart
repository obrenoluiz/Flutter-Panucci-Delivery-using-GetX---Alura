import 'dart:async';

import 'package:get/get.dart';

class ServicesManager {
    static final servicesInitialized = Completer<void>();
  
    static Future<void> init() async {
      // Get.put(LocalStorage());
      
      if (!servicesInitialized.isCompleted) {
        servicesInitialized.complete();
      }
    }
  }
  