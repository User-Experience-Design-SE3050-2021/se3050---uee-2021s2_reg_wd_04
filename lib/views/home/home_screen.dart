import 'package:cargills_online_app/controllers/global_controller.dart';
import 'package:cargills_online_app/views/Cart/CartView.dart';
import 'package:cargills_online_app/views/home/home_body.dart';
import 'package:cargills_online_app/views/manage_address/manage_address_screen.dart';
import 'package:cargills_online_app/views/manage_card/manage_card_screen.dart';
import 'package:cargills_online_app/views/products_categories/categories_screen.dart';
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
      HomeBody(),
      CategoriesPage(),
      CartView(),
      ProfileScreen(),
    ];
    return GetBuilder<GlobalController>(
      builder: (controller) {
        return Scaffold(
          key: controller.scaffoldKey,
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
          drawer: Container(
            color: Colors.black.withOpacity(0.5),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.arrow_back_ios,
                      size: 30.0,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: 20.0),
                  ListTile(
                    title: const Text(
                      'Shop',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      globalController.onTapped(0);
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.home,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Cart',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      globalController.onTapped(2);
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.shopping_cart,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      globalController.onTapped(1);
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.category,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Manage Address',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(ManageAddressScreen());
                      // Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.delivery_dining,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Manage Cards',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Get.to(ManageCardScreen());
                      // Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.credit_card,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      globalController.onTapped(3);
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.person,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    trailing: Icon(
                      Icons.logout,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
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
                        icon: Icon(Icons.category),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.shopping_cart),
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
      },
    );
  }
}
