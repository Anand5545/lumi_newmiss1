import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/widget/bigscreen.dart';
import 'package:lumi_newmiss1/widget/mobileScreen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var devicewidth = MediaQuery.of(context).size.width;
    if (devicewidth < 600) {
      return MobileScreen();
    } else {
      return BigScreen();
    }
  }
}
