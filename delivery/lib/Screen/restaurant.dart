// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';

import 'package:delivery/Data/restaurant_list.dart';
import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  Restaurant({Key? key}) : super(key: key);
  List<Map> rlist = RestaurantList.itemNames;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = rlist[index];
          return ListTile(
            leading: Image.asset("${data["image"]}"),
            title: Text("${data["name"]}"),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/${data["path"]}');
            },
          );
        },
        itemCount: rlist.length,
      ),
    );
  }
}
