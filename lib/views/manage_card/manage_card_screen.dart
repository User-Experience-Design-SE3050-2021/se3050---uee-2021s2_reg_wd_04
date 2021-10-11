import 'package:cargills_online_app/views/manage_card/manage_card_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageCardScreen extends StatelessWidget {
  const ManageCardScreen({Key? key}) : super(key: key);

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
                          "Add card",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Column(
                    children: [
                      TextFieldWidget(hintText: 'Full Name'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Card Number'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Expiration Date'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'CVC'),
                      SizedBox(height: size.height * 0.08),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                buttonTitle: 'Add Card',
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
