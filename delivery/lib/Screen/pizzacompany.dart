import 'dart:html';

import 'package:flutter/material.dart';
import 'package:delivery/Data/pizzacompany_menu.dart';

class PizzaCompany extends StatelessWidget {
  PizzaCompany({Key? key,}) : super(key: key);
  List<Map> menuList = PizzaCompanyMenu.menu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/restaurantList');
          },
        ),
        title: const Text("The Pizza Company"),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = menuList[index];
          return ListTile(
              leading: Image.asset("${data["image"]}"),
              title: Text("${data["title"]}"),
              trailing: Text("${data["price"]} bath"));
        },
        itemCount: menuList.length,
      ),
    );
  }
}
