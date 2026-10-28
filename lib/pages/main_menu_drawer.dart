import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/main_menu_controller.dart';


class MainMenuDrawerPage extends StatelessWidget {
  const MainMenuDrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainMenuController controller =
        Get.find<MainMenuController>();

    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            color: Colors.indigo,
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(16),
            child: const Text(
              'Figo Store',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Obx(
              () => ListView(
                padding: EdgeInsets.zero,
                children: [
                  _menuItem(
                    icon: Icons.home_outlined,
                    title: 'Home',
                    selected: controller.selectedIndex.value == 0,
                    onPressed: () {
                      controller.changePage(0);
                      Get.back();
                    },
                  ),

                  _menuItem(
                    icon: Icons.history_outlined,
                    title: 'History',
                    selected: controller.selectedIndex.value == 1,
                    onPressed: () {
                      controller.changePage(1);
                      Get.back();
                    },
                  ),

                  _menuItem(
                    icon: Icons.person_outline,
                    title: 'Profile',
                    selected: controller.selectedIndex.value == 2,
                    onPressed: () {
                      controller.changePage(2);
                      Get.back();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String title,
    required bool selected,
    required VoidCallback onPressed,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      selected: selected,
      selectedTileColor: Colors.indigo.withValues(alpha: 0.12),
      selectedColor: Colors.indigo,
      onTap: onPressed,
    );
  }
}
