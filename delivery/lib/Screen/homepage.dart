// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome To Food Delivery',
                style: Theme.of(context).textTheme.headline1,
              ),
              Image.asset(
                'images/FoodDelivery.png',
                //width: 100,
                //height: 100,
                fit: BoxFit.cover,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Address',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('Find some food!'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              ),
              ElevatedButton(
                child: const Text('Admin Page'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/admin_login');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
