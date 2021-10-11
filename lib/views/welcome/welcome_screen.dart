import 'package:cargills_online_app/views/signin/signin_screen.dart';
import 'package:cargills_online_app/views/signup/signup_screen.dart';
import 'package:cargills_online_app/views/welcome/welcome_wdigets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Color(0xffFD051B),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.08),
            Text(
              'Welcome To Cargills online',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Center(child: WelcomeImageWidget()),
            SizedBox(height: size.height * 0.15),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonWidget(
                      buttonTitle: 'Sign In',
                      onButtonPressed: () {
                        Get.to(SignInScreen());
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 5, 10, 20),
              child: Row(
                children: [
                  Expanded(
                    child: ButtonWidget(
                      buttonTitle: 'Sign Up',
                      onButtonPressed: () {
                        Get.to(SignUpScreen());
                      },
                    ),
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
