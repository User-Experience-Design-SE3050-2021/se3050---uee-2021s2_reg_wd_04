import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 35),
              IconButton(
                iconSize: 25,
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                ),
              ),
              SizedBox(height: 20),
              Text('FAQs Page'),
              Form(
                child: Column(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
