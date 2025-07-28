import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop_app/widgets/listview_type.dart';
import 'package:shoes_shop_app/widgets/make_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
        title: Text(
          "Shoes",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ListviewType(type: "All", selected: true),
                    ListviewType(type: "Sneakers", selected: false),
                    ListviewType(type: "Football", selected: false),
                    ListviewType(type: "Soccer", selected: false),
                    ListviewType(type: "Golf", selected: false),
                  ],
                ),
              ),
              SizedBox(height: 20),
              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: makeItem(
                  context: context,
                  tag: "red",
                  image: "assets/images/shoes_1.jpg",
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: makeItem(
                  context: context,
                  tag: "blue",
                  image: "assets/images/shoes_2.jpg",
                ),
              ),
              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: makeItem(
                  context: context,
                  tag: "white",
                  image: "assets/images/shoes_4.jpg",
                ),
              ),

              FadeInUp(
                duration: Duration(milliseconds: 1500),
                child: makeItem(
                  context: context,
                  tag: "green",
                  image: "assets/images/shoes_3.jpg",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
