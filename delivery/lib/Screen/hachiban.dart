import 'dart:html';

import 'package:flutter/material.dart';
import 'package:delivery/Data/hachiban_menu.dart';

class Hachiban extends StatelessWidget {
  Hachiban({Key? key,}) : super(key: key);
  List<Map> menuList = HachibanMenu.menu;

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
        title: const Text("Hachiban"),
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
