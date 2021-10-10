import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Back button widget
class PageBackButton extends StatelessWidget {
  const PageBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_sharp,
          ),
        ),
      ],
    );
  }
}

// Text field widget
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0.1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintText,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}

// Password field widget
class PasswordFieldWidget extends StatelessWidget {
  const PasswordFieldWidget({Key? key, required this.hintText})
      : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0.1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: hintText,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileButtonWidget extends StatelessWidget {
  const ProfileButtonWidget(
      {Key? key, required this.buttonTitle, required this.onButtonPress})
      : super(key: key);
  final String buttonTitle;
  final Function onButtonPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {
                onButtonPress();
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xffFD051B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
              ),
              child: Text(
                buttonTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
