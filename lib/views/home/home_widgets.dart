import 'package:cargills_online_app/controllers/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeMenuButton extends StatelessWidget {
  const HomeMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalController globalController = Get.put(GlobalController());
    return GetBuilder<GlobalController>(
      builder: (controller) {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                controller.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        );
      },
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
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: Colors.black, width: 0.5),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.search),
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

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Color(0xffFD051B),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Column(
          children: [
            Container(
              height: 100.0,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
