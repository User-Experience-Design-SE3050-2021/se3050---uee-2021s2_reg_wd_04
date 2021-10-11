import 'package:cargills_online_app/views/product_single/vegetable_single.dart';
import 'package:cargills_online_app/views/product_single/vegetable_single2.dart';
import 'package:cargills_online_app/views/product_single/vegetable_single3.dart';
import 'package:cargills_online_app/views/product_single/vegetable_single4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Vegetables extends StatelessWidget {
  const Vegetables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 30, right: 30, bottom: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  // Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Vegetables",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontFamily: "calibri",
                        fontWeight: FontWeight.bold),
                  ),
                  Expanded(child: Container()),
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding:
                    EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 3,
                            color: Colors.green.shade200,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        width: double.infinity,
                        height: size.height * 0.2,
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: <Widget>[
                              // Positioned(
                              //   right: 5,
                              //   bottom: 1,
                              //   child: Image.asset(
                              //     'assets/images/login_bottom.png',
                              //     scale: 2,
                              //   ),
                              // ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      'Available',
                                      style: TextStyle(
                                        // fontFamily: SANSATION_REGULAR,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF6F35A5),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 15.0, 0, 0),
                                      child: Text(
                                        'Vegetables',
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF6F35A5),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            'Tomatoes',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle2());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            'Pumpkins',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle3());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 30,
                                          child: Text(
                                            'Carrots',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle4());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            'Cabbages',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            'Tomatoes',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/vegetables.jpg',
                                            scale: 1,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 20,
                                          child: Text(
                                            'Cucumber',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/tomatoes.jpg',
                                            scale: 22,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 50,
                                          left: 20,
                                          child: Text(
                                            'Tomatoes',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(VegeSingle());
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 5,
                                        color: Colors.purple.shade400,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 20,
                                    ),
                                    width: double.infinity,
                                    height: size.height * 0.2,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          child: Image.asset(
                                            'assets/images/tomatoes.jpg',
                                            scale: 22,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 50,
                                          left: 20,
                                          child: Text(
                                            'Tomatoes',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
