import 'package:cargills_online_app/theme_data.dart';
import 'package:cargills_online_app/views/signin/signin_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const CargillsOnline(),
  );
}

class CargillsOnline extends StatelessWidget {
  const CargillsOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cargills Online',
      theme: theme(),
      home: SignInScreen(),
    );
  }
}
