
import 'package:application_project/menu/history.dart';
import 'package:application_project/menu/home.dart';
import 'package:application_project/menu/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> listPages = [
    Home(),
    const History(),
    const Profile(),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
