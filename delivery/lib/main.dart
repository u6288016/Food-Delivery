// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:delivery/Admin/regis_msg.dart';
import 'package:delivery/Admin/restaurant_login.dart';
import 'package:delivery/Admin/restaurant_regis.dart';
import 'package:delivery/Screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:delivery/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return //MultiProvider(
      // providers: [
      //   // In this sample app, CatalogModel never changes, so a simple Provider
      //   // is sufficient.
      //   Provider(create: (context) => CatalogModel()),
      //   // CartModel is implemented as a ChangeNotifier, which calls for the use
      //   // of ChangeNotifierProvider. Moreover, CartModel depends
      //   // on CatalogModel, so a ProxyProvider is needed.
      //   ChangeNotifierProxyProvider<CatalogModel, CartModel>(
      //     create: (context) => CartModel(),
      //     update: (context, catalog, cart) {
      //       if (cart == null) throw ArgumentError.notNull('cart');
      //       cart.catalog = catalog;
      //       return cart;
      //     },
      //   ),
      // ],
      //child: 
      MaterialApp(
        title: 'Food Delivery Demo',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomePage(),
          '/admin_login': (context) => const AdminLogin(),
          '/admin_regis': (context) => const AdminRegister(),
          '/complete_regis': (context) => const RegisterMessage(),
        },
     // ),
    );
  }
}
