import 'package:flutter/material.dart';

class CheckoutView extends StatefulWidget {
  CheckoutViewState createState() => CheckoutViewState();
}

class CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Confirm Order",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 14),
            Text("Delivery address",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 14),
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red[500],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Radio(
                              value: "first",
                              groupValue: "first",
                              onChanged: (String value) {
                                print(value);
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Home",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600)),
                              Text("Street, District,Pro....",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ))),
              onTap: () {
                print("hello");
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red[500],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Radio(
                              value: "first",
                              groupValue: "first",
                              onChanged: (String value) {
                                print(value);
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Office",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600)),
                              Text("Street, District,Pro....",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ))),
              onTap: () {
                print("hello");
              },
            ),
            SizedBox(height: 8),
            Text("Payment",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 14),
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Radio(
                              value: "first",
                              groupValue: "first",
                              onChanged: (String value) {
                                print(value);
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Credit card",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600)),
                              Text("XXXX-XXXX-XXXX-1234",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400))
                            ],
                          )
                        ],
                      ))),
              onTap: () {
                print("hello");
              },
            ),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 14),
                Text("OR",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(height: 8),
            GestureDetector(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red[500],
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            child: Radio(
                              value: "first",
                              groupValue: "first",
                              onChanged: (String value) {
                                print(value);
                              },
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pay on Delivery",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600)),
                            ],
                          )
                        ],
                      ))),
              onTap: () {
                print("hello");
              },
            ),
            SizedBox(height: 14),
            Text("Details",
                style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Sub Total",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500)),
              Text("+ 1250.00",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500)),
            ]),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Delivery charges",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500)),
              Text("+ 150.00",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500)),
            ]),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text("Total",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500)),
              Text("LKR 1400.00",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500)),
            ])
          ],
        ));
  }
}
