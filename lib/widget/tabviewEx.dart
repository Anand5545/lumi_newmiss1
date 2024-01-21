import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/gridview1.dart';
import 'package:lumi_newmiss1/gridview2.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Tabview(),
  ));
}

class Tabview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        //scaffold wrap with Default tab controller
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text("TabBar"),
          bottom:
              const TabBar(tabs: [Text("Chat"), Text("Call"), Text("Status")]),
        ),
        // body: Center(
        //   child: Text("Helloo"),
        // ),

        body: TabBarView(children: [
          Gridview1(),
          Center(child: Text("Call")),
          Icon(Icons.person)
        ]),
      ),
    );
  }
}
