
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:application_project/controller/main_menu_controller.dart';
import 'package:application_project/pages/main_menu_drawer.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('TOKO ELEKTRONIK REYHAN KECHIE'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),

        drawer: MainMenuDrawerPage(),

        body: IndexedStack(
          index: menuController.selectedIndex.value,
          children: menuController.listPages,
        ),

       
      ),
    );
  }
}
