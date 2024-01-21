import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/datapassing/dummydata.dart';
import 'package:lumi_newmiss1/gridview6.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Productlist(),
    debugShowCheckedModeBanner: false,
    routes: {"details": (context) => Gridview6()},
  ));
}

class Productlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: ListView(
          children: products
              .map((e) => ListTile(
                    leading: CircleAvatar(
                      child: Image.asset(e["image"]),
                    ),
                    title: Text(
                      e["name"],
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    onTap: () => gotodetails(context, e["id"]),
                  ))
              .toList()),
    );
  }
}

void gotodetails(BuildContext context, id) {
  Navigator.pushNamed(context, "details", arguments: id);
}
