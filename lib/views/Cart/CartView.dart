import 'package:cargills_online_app/controllers/global_controller.dart';
import 'package:cargills_online_app/views/Checkout/CheckoutView.dart';
import 'package:flutter/material.dart';
import 'package:cargills_online_app/views/Cart/Cart.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  CartViewState createState() => CartViewState();
}

class CartViewState extends State<CartView> {
  List<Cart> items = [
    Cart("Tomato", 300.0, 4, false, "assets/images/tomato.png"),
    Cart("Brinjal", 100.0, 2, false, "assets/images/Brinjal.png"),
    Cart("Grapes", 50.0, 3, false, "assets/images/Grapes.png"),
    Cart("Broccoli", 50.0, 4, false, "assets/images/Broccoli.png"),
    Cart("Pumpking", 50.0, 2, false, "assets/images/Pumpking.png")
  ];

  bool selectMode = false;

  void setCount(int index, int count) {
    setState(() {
      items[index].count = count;
    });
  }

  int selection = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    GlobalController globalController = Get.put(GlobalController());
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20.0, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              GetBuilder<GlobalController>(
                builder: (controller) {
                  return Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          controller.scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(width: 50.0),
              Text(
                'Cart',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (!selectMode)
                TextButton(
                  child: Text("Select"),
                  onPressed: () {
                    setState(() {
                      selectMode = true;
                    });
                  },
                ),
              if (selectMode)
                TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    setState(() {
                      selectMode = false;
                    });
                  },
                ),
              if (selectMode)
                TextButton(
                  child: Text("Delete selected",
                      style: TextStyle(color: Colors.red)),
                  onPressed: () {
                    setState(() {
                      items.removeWhere((item) => item.isSelected == true);
                      selectMode = false;
                    });
                  },
                ),
            ],
          ),
          Container(
            height: size.height * 0.69,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Dismissible(
                    key: Key("First"),
                    background: Container(
                      child: Icon(Icons.delete),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    onDismissed: (direction) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                    child: Container(
                      width: double.infinity,
                      height: 80.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 10,
                            child: Image.asset(items[index].path,
                                width: 50, height: 50),
                          ),
                          Positioned(
                            left: 90,
                            top: 10,
                            child: Text(items[index].name,
                                style: TextStyle(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Positioned(
                            left: 90,
                            top: 40,
                            child: Text(items[index].price.toString(),
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400)),
                          ),
                          Positioned(
                              right: 15,
                              bottom: 8,
                              child: Container(
                                height: 30,
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(10)),

                                // dropdown below..
                                child: DropdownButton<int>(
                                    value: items[index].count,
                                    icon: Icon(Icons.arrow_drop_down),
                                    iconSize: 15,
                                    underline: SizedBox(),
                                    onChanged: (int? newValue) {
                                      setState(() {
                                        // items[index].count = newValue;
                                      });
                                    },
                                    items: <int>[
                                      1,
                                      2,
                                      3,
                                      4,
                                      5,
                                      6
                                    ].map<DropdownMenuItem<int>>((int value) {
                                      return DropdownMenuItem<int>(
                                        value: value,
                                        child: Text(
                                          value.toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      );
                                    }).toList()),
                              )),
                          if (selectMode)
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 8.0),
                                child: Checkbox(
                                  value: items[index].isSelected,
                                  onChanged: (bool? newValue) {
                                    setState(
                                      () {
                                        // items[index].isSelected = newValue;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(CheckoutView());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFD051B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 60),
                    ),
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
