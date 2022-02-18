// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

class RegisterMessage extends StatelessWidget {
  const RegisterMessage({Key? key}) : super(key: key);

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
                'Registration Completed',
                style: Theme.of(context).textTheme.headline3,
              ),
              ElevatedButton(
                child: const Text('back to login'),
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
