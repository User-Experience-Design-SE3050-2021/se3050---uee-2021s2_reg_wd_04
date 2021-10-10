import 'package:cargills_online_app/controllers/global_controller.dart';
import 'package:cargills_online_app/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalController globalController = Get.put(GlobalController());
    final List _screens = [
      ProfileScreen(),
      ProfileScreen(),
      ProfileScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      extendBody: true,
      body: Container(
        height: size.height,
        width: size.width,
        child: GetBuilder<GlobalController>(
          builder: (controller) {
            return Center(
              child: _screens[controller.selectedIndex],
            );
          },
        ),
      ),
      bottomNavigationBar: GetBuilder<GlobalController>(
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 0,
                  blurRadius: 10,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                iconSize: 30.0,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                backgroundColor: Colors.white,
                selectedItemColor: Color(0xffFD051B),
                unselectedItemColor: Colors.grey,
                currentIndex: controller.selectedIndex,
                onTap: controller.onTapped,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.notifications),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: '',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
