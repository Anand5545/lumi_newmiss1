import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/gridview1.dart';
import 'package:lumi_newmiss1/gridview3.dart';
import 'package:lumi_newmiss1/gridview4.dart';

//Here selected button in navigation bar become projected
void main() {
  runApp(MaterialApp(
    home: Convexapp(),
  ));
}

class Convexapp extends StatefulWidget {
  @override
  State<Convexapp> createState() => _ConvexappState();
}

class _ConvexappState extends State<Convexapp> {
  int index = 0;
  var scrn = [Gridview1(), Gridview3(), Gridview4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BOTTOM NAVIGATION BAR"),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icon(Icons.home)),
          TabItem(icon: Icon(Icons.person)),
          TabItem(icon: Icon(Icons.search)),
        ],
        onTap: (tabindex) {
          setState(() {
            index = tabindex;
          });
        },
      ),
      body: scrn[index],
    );
  }
}
