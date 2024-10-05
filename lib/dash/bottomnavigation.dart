import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shubham_test/artical/artical.dart';
import 'package:shubham_test/book/book.dart';
import 'package:shubham_test/chatbot/chatscreen.dart';
import 'package:shubham_test/dash/dashboard_screen.dart';
import 'package:shubham_test/profile/profile.dart';

class Bottomnavigation extends StatelessWidget {
  const Bottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationBarController());

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          items: [
            _buildBottomNavigationBarItem(Icons.home_outlined, "Home"),
            _buildBottomNavigationBarItem(Icons.book_outlined, "Books"),
            _buildBottomNavigationBarItem(Icons.newspaper, "Resources"),
            _buildBottomNavigationBarItem(Icons.person_2_outlined, "Profile"),
          ],
        ),
      ),
      body: Obx(() => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: controller.screen[controller.selectedIndex.value],
          )),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData icon, String label,) {
    return BottomNavigationBarItem(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
          icon,
          key: ValueKey<String>(label),
        ),
      ),
      label: label,
    );
  }
}

class NavigationBarController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screen = [
    const DashboardScreen(),
     BookListScreen(),
     ArtifactListScreen(),
     UserProfileScreen(),
  ];
}
