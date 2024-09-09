import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/dash/h.dart';
import 'package:shubham_test/main.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {

    final controller =Get.put(NavigationBarController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () =>  NavigationBar(
          backgroundColor: Colors.white,
          height: 100,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          
          destinations: const [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: NavigationDestination(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
              ),
              label: "Home",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: NavigationDestination(
              icon: Icon(
                Icons.book_outlined,
                size: 30,
              ),
              label: "Books",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: NavigationDestination(
              icon: Icon(
                Icons.newspaper,
                size: 30,
              ),
              label: "Resources",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: NavigationDestination(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
              ),
              label: "Profile",
            ),
          ),
        ]),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationBarController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  
  final screen = [ const DashboardScreen(),Container(color: Colors.blue,),Container(color: Colors.red,),const Homescreen()];
}