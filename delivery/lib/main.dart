// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:delivery/Screen/hachiban.dart';
import 'package:delivery/Screen/map.dart';
import 'package:delivery/Screen/pizzacompany.dart';
import 'package:delivery/Screen/service.dart';
import 'package:delivery/Screen/starbucks.dart';
import 'package:flutter/material.dart';
import 'package:delivery/Screen/restaurant.dart';
import 'package:delivery/theme/theme.dart';
import 'package:delivery/Screen/burgerking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
        title: 'Food Delivery Demo',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const MyService(),
          '/restaurantList': (context) => Restaurant(),
          '/map': (context) => const MyMap(),
          '/burgerking':(context) => BurgerKing(),
          '/hachiban':(context) => Hachiban(),
          '/pizzacompany':(context) => PizzaCompany(),
          '/starbucks':(context) => Starbucks(),
        },
     // ),
    );
  }
}

