import 'package:cargills_online_app/views/products_categories/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Fruits extends StatelessWidget {
  const Fruits({Key? key}) : super(key: key);

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
                    "Fruits",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
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
                            width: 2,
                            color: Colors.red.shade200,
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
                              Positioned(
                                right: 5,
                                bottom: 1,
                                child: Image.asset(
                                  'assets/images/login_bottom.png',
                                  scale: 2,
                                ),
                              ),
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
                                        fontWeight: FontWeight.w800,
                                        color: Colors.green,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 15.0, 0, 0),
                                      child: Text(
                                        'Fruits',
                                        style: TextStyle(
                                          fontSize: 32,
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
                                  // onTap: () {
                                  //   Get.to(VegeSingle());
                                  // },
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
                                            'assets/images/fruits.jpg',
                                            scale: 5,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 20,
                                          child: Text(
                                            'Apple',
                                            style: TextStyle(
                                              // fontFamily: SANSATION_REGULAR,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800,
                                              color: Colors.orange,
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
                                  // onTap: () {
                                  //   Get.to();
                                  // },
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
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 20,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/credit_card.png',
                                          scale: 16,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 10,
                                        child: Text(
                                          'Request Card',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 15,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/history.png',
                                          scale: 15,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 15,
                                        child: Text(
                                          'Transactions',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 20,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/credit_card.png',
                                          scale: 16,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 10,
                                        child: Text(
                                          'Request Card',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 15,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/history.png',
                                          scale: 15,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 15,
                                        child: Text(
                                          'Transactions',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 20,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/pay_credit.png',
                                          scale: 16,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 35,
                                        child: Text(
                                          'Tomatoes',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
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
                                        right: 20,
                                        top: -10,
                                        child: Image.asset(
                                          'assets/images/piggy_bank.png',
                                          scale: 16,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 10,
                                        right: 28,
                                        child: Text(
                                          'Recharge',
                                          style: TextStyle(
                                            // fontFamily: SANSATION_REGULAR,
                                            fontSize: 20,
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
