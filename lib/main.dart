import 'dart:async';

import 'package:flutter/material.dart';
import 'package:panucci_delivery/screens/home.dart';
import 'package:panucci_delivery/services/services_manager.dart';

void main() {
  RunApp.run();
}

class RunApp {
  static Future<void> run() async {
    return runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await ServicesManager.init();
      await afterAppRun();

      return runApp(const PanucciDelivery());
    }, (error, stack) async {
      debugPrint('Error initing app $error, the stack was: $stack');
    });
  }
  
  static Completer<void> afterRunAppCompleted = Completer();
  static Future<void> afterAppRun() async {
    if (!afterRunAppCompleted.isCompleted) {
      afterRunAppCompleted.complete();
    }
  }
}

class PanucciDelivery extends StatelessWidget {
  const PanucciDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 255, 83, 83),
          ),
          useMaterial3: true),
      home: Home(),
    );
  }
}
