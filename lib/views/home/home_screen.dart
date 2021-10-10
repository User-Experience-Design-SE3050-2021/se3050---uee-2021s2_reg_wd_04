import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              Text('Home Page'),
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
