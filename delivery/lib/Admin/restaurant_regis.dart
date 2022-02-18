// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class AdminRegister extends StatelessWidget {
  const AdminRegister({Key? key}) : super(key: key);

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
                  hintText: 'Restaurant Name',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              ElevatedButton(
                child: const Text('register'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/complete_regis');
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
