import 'package:cargills_online_app/views/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'edit_profile_widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

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
                          "Edit Profile",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Column(
                    children: [
                      TextFieldWidget(hintText: 'Username'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'First Name'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Last Name'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Email'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'Mobile'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'DOB'),
                      SizedBox(height: size.height * 0.04),
                      TextFieldWidget(hintText: 'NIC'),
                      SizedBox(height: size.height * 0.04),
                      PasswordFieldWidget(hintText: 'Password'),
                      SizedBox(height: size.height * 0.04),
                      PasswordFieldWidget(hintText: 'Confirm Password'),
                      SizedBox(height: size.height * 0.03),
                      ProfileButtonWidget(
                        buttonTitle: 'Submit',
                        onButtonPress: () {},
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
