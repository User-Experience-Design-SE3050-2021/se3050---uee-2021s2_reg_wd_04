import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VegeSingle4 extends StatelessWidget {
  const VegeSingle4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5),
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
                  Expanded(child: Container()),
                  Icon(Icons.shopping_cart),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 5,
              bottom: 1,
              child: Image.asset(
                'assets/images/cabbage.jpg',
                scale: 1,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            ListTile(
              leading: Icon(
                Icons.task_alt_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Cabbage',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.task_alt_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Quantity : 500g',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.task_alt_sharp,
                color: Colors.red,
              ),
              title: Text(
                'Price : 300',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: ElevatedButton(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    Get.defaultDialog(
                      buttonColor: Color(0xFF6F35A5),
                      confirmTextColor: Colors.white,
                      onConfirm: () => Get.back(),
                      middleText: "Recharge Successful!",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[300],
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
