import 'package:cargills_online_app/theme_data.dart';
import 'package:cargills_online_app/views/product_single/vegetable_single.dart';
import 'package:cargills_online_app/views/products_categories/categories_screen.dart';
import 'package:cargills_online_app/views/products_list/products_fruits.dart';
import 'package:cargills_online_app/views/products_list/products_vegetables.dart';
import 'package:cargills_online_app/views/signup/signup_screen.dart';
import 'package:cargills_online_app/views/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const CargillsOnline());
}

class CargillsOnline extends StatelessWidget {
  const CargillsOnline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cargills Online',
      theme: theme(),
      home: CategoriesPage('s'),
    );
  }
}
