import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        primary: Color(0xffFD051B),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        padding: EdgeInsets.symmetric(vertical: 20.0),
      ),
      child: Text(
        buttonTitle,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// class BirthDayDatePicker extends StatelessWidget {
//   const BirthDayDatePicker({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           labelTitle('Date of Birth', false),
//           Padding(
//             padding: const EdgeInsets.only(top: 5),
//             child: RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5),
//                     side: BorderSide(color: Colors.grey[200])),
//                 elevation: 0.0,
//                 padding: EdgeInsets.symmetric(vertical: 15),
//                 onPressed: () async {
//                   await showDatePicker(
//                     context: context,
//                     initialDate: DateTime.now(),
//                     firstDate: DateTime(2000, 1),
//                     lastDate: DateTime(2045),
//                   ).then((pickedDate) {
//                     if (pickedDate != null) {
//                       setState(() {
//                         ContactDetails.birthDay =
//                             '${pickedDate.day < 10 ? '0${pickedDate.day}' : pickedDate.day}/${pickedDate.month < 10 ? '0${pickedDate.month}' : pickedDate.month}/${pickedDate.year}';
//                       });
//                     }
//                   });
//                 },
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text(
//                       "${ContactDetails.birthDay != "" ? ContactDetails.birthDay : 'Select a date'}",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 16,
//                           fontWeight: FontWeight.normal),
//                     ),
//                   ),
//                 )),
//           ),
//         ],
//       ),
//     );
//   }
// }
