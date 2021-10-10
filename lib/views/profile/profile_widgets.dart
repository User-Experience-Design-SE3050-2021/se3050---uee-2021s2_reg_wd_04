import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: size.height * 0.25,
          width: size.width * 0.4,
          child: Image.asset(
            'assets/images/profile.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class ProfileBackButton extends StatelessWidget {
  const ProfileBackButton({Key? key}) : super(key: key);

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

class TextDetailWidget extends StatelessWidget {
  const TextDetailWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText2,
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
