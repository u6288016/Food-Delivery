
import 'package:flutter/material.dart';
import 'package:delivery/Screen/homepage.dart';
import 'package:delivery/Screen/account.dart';
import 'package:delivery/Screen/activity.dart';
import 'package:delivery/Screen/map.dart';
import 'package:delivery/Screen/payment.dart';

class MyService extends StatefulWidget {
  const MyService({Key? key}) : super(key: key);

  @override
  State<MyService> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyService> {
  List<Widget> widgets = [HomePage(), Activity(), Payment(), MyMap(), Account()];
  int index = 0;


  List<BottomNavigationBarItem> listBotton() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HomePage', backgroundColor: Colors.blue[300]),
      BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'Activity', backgroundColor: Colors.blue[300]),
      BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Payment', backgroundColor: Colors.blue[300]),
      BottomNavigationBarItem(icon: Icon(Icons.location_pin), label: 'Map', backgroundColor: Colors.blue[300]),
      BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Account', backgroundColor: Colors.blue[300]),
    ].toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: listBotton(),
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}