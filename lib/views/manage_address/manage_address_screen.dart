import 'package:cargills_online_app/views/home/home_screen.dart';
import 'package:cargills_online_app/views/manage_address/manage_address_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageAddressScreen extends StatelessWidget {
  const ManageAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05),
            PageBackButton(),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 20),
                        child: Text(
                          "Create Address",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Column(
                    children: [
                      TextFieldWidget(hintText: 'Address Line 01'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Address Line 02'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Street'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'City'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Province'),
                      SizedBox(height: size.height * 0.04),
                      SizedBox(height: size.height * 0.04),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                buttonTitle: 'Create Address',
                                onButtonPressed: () {},
                              ),
                            ),
                          ],
                        ),
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
