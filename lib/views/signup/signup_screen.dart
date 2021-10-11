import 'package:cargills_online_app/views/signin/signin_screen.dart';
import 'package:cargills_online_app/views/signup/signup_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                          "Sign Up",
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
                      GestureDetector(
                        onTap: () {
                          Get.to(SignInScreen());
                        },
                        child: Text(
                          'Already have an account? Sign In',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.04),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                        child: Row(
                          children: [
                            Expanded(
                              child: ButtonWidget(
                                buttonTitle: 'Sign Up',
                                onButtonPressed: () {
                                  Get.to(SignInScreen());
                                },
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
