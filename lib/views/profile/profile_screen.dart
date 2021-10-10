import 'package:cargills_online_app/views/edit_profile/edit_profile_screen.dart';
import 'package:cargills_online_app/views/profile/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Color(0xffFD051B),
      child: Column(
        children: [
          SizedBox(height: size.height * 0.05),
          ProfileBackButton(),
          ProfileImageWidget(),
          SizedBox(height: size.height * 0.05),
          Container(
            height: size.height * 0.55,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Username',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextDetailWidget(text: 'First Name'),
                      SizedBox(height: size.height * 0.01),
                      TextDetailWidget(text: 'Last Name'),
                      SizedBox(height: size.height * 0.01),
                      TextDetailWidget(text: 'Email'),
                      SizedBox(height: size.height * 0.01),
                      TextDetailWidget(text: 'Mobile'),
                      SizedBox(height: size.height * 0.01),
                      TextDetailWidget(text: 'DOB'),
                      SizedBox(height: size.height * 0.01),
                      TextDetailWidget(text: 'NIC'),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                ProfileButtonWidget(
                  buttonTitle: 'Edit Profile',
                  onButtonPress: () {
                    Get.to(EditProfileScreen());
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
