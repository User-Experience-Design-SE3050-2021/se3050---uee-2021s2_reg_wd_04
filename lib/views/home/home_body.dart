import 'package:cargills_online_app/views/home/home_widgets.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xffFD051B),
                child: Row(
                  children: [
                    HomeMenuButton(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Delivery Location',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Athurugiriya Colombo',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 120.0),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.amber,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              TextFieldWidget(hintText: 'Search'),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Offers',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 2.0,
                    ),
                    Row(
                      children: [
                        HomeCardWidget(
                          image: 'assets/images/offer_one.jpg',
                          text: '30% Off',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/offer_two.jpg',
                          text: '10% Off',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/offer_three.jpg',
                          text: '20% Off',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Shop By Category',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 2.0,
                    ),
                    Row(
                      children: [
                        HomeCardWidget(
                          image: 'assets/images/fruits.jpg',
                          text: 'Fruits',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/vegetables.jpg',
                          text: 'Vegetables',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/drinks.png',
                          text: 'Drinks',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Top Products',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.grey,
                      thickness: 2.0,
                    ),
                    Row(
                      children: [
                        HomeCardWidget(
                          image: 'assets/images/apple.jpg',
                          text: 'Apple',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/cabbage.jpg',
                          text: 'Cabbage',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/carrots.jpg',
                          text: 'Carrots',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        HomeCardWidget(
                          image: 'assets/images/orange.png',
                          text: 'Orange',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/tomato.jpg',
                          text: 'Tomato',
                        ),
                        HomeCardWidget(
                          image: 'assets/images/offer_three.jpg',
                          text: 'Nestamolt',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
