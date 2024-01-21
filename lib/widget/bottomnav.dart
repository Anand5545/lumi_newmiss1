import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lumi_newmiss1/gridview1.dart';
import 'package:lumi_newmiss1/gridview2.dart';
import 'package:lumi_newmiss1/gridview3.dart';
import 'package:lumi_newmiss1/gridview6.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Bottomnav(),
  ));
}

class Bottomnav extends StatefulWidget {
  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index = 0;
  var screens = [Gridview1(), Gridview6(), Gridview3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Bar"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (tapindex) {
              setState(() {
                index = tapindex;
              });
            },
            backgroundColor: Colors.black38,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Home",
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mobile_friendly),
                label: "Intraction",
                backgroundColor: Colors.green,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.usb_rounded),
                label: "Connection",
                backgroundColor: Colors.blueGrey,
              )
            ]),
        body: screens[index]);
  }
}
