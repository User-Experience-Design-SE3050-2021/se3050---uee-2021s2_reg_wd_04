import 'package:flutter/material.dart';

class WelcomeImageWidget extends StatelessWidget {
  const WelcomeImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: size.height * 0.4,
          width: size.width * 0.8,
          child: Image.asset(
            'assets/images/cargills_logo.png',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key, required this.buttonTitle, required this.onButtonPressed})
      : super(key: key);
  final String buttonTitle;
  final Function onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onButtonPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          color: Color(0xffFD051B),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
