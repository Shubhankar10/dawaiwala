import 'package:dawaiwala/consts/consts.dart';
import 'package:dawaiwala/controllers/home_controller.dart';
import 'package:dawaiwala/screens/deals_screen/deals_screen.dart';
import 'package:dawaiwala/screens/history_screen/history_screen.dart';
import 'package:dawaiwala/screens/home_screen/home_screen.dart';
import 'package:dawaiwala/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItem = [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.medical_information_outlined), label: "History"),
      BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Deals"),
      BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined), label: "Profile"),
    ];
    var navBody = [
      HomeScreen(),
      HistoryScreen(),
      DealsScreen(),
      ProfileScreen()
    ];

    return Scaffold(
        body: Column(
          children: [
            Obx((() => Expanded(
                child: navBody.elementAt(controller.currentNavIndex.value))))
          ],
        ),
        bottomNavigationBar: Obx(
          (() => BottomNavigationBar(
                currentIndex: controller.currentNavIndex.value,
                selectedItemColor: const Color(0xff1870B5),
                selectedLabelStyle:
                    const TextStyle(fontWeight: FontWeight.bold),
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                items: navBarItem,
                onTap: (value) {
                  controller.currentNavIndex.value = value;
                },
              )),
        ));
  }
}
