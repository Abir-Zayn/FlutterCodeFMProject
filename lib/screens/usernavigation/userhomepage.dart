import 'package:flutter/material.dart';
import 'package:get/get.dart';

class userhomepage extends StatelessWidget {
  const userhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create an instance of NavigationController using Get.put
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,

            //Selected Index is rx types of value
            selectedIndex: controller.selectedIndex.value,

            //Callback when another page has been selected
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,

            //list of destinations along with its label
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.shop), label: 'Shop'),
              NavigationDestination(
                  icon: Icon(Icons.heart_broken), label: 'Wishlist'),
              NavigationDestination(icon: Icon(Icons.man), label: 'Profile')
            ]),
      ),

      // Body using Obx to reactively update the displayed screen
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

// NavigationController manages the state for the bottom navigation bar
class NavigationController extends GetxController {
  // selectedIndex is a reactive (rx) value representing the current selected index
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    Container(color: Colors.green),
    Container(color: Colors.deepOrange),
    Container(color: Colors.red),
    Container(color: Colors.yellow)
  ];
}
