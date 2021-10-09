import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage(String s);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                  ),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                // Icon(Icons.arrow_back_ios),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Categories",
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
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.8),
                          Colors.green.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Vegetables",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green.withOpacity(0.8),
                          Colors.orange.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Fruits",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.pink.withOpacity(0.8),
                          Colors.grey.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Baby Products",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.red.withOpacity(0.8),
                          Colors.orange.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Meats",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.8),
                          Colors.purple.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dairy Products",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.green.withOpacity(0.8),
                          Colors.red.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Drinks",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.8),
                          Colors.green.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cargills Range of Products",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue.withOpacity(0.8),
                          Colors.green.withOpacity(0.8),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cargills Range of Products",
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Container(
                            height: 200,
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
                addAutomaticKeepAlives: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
