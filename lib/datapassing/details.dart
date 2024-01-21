import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/datapassing/dummydata.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((e) => e["id"] == tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(product["image"]),
            Text(product["name"]),
            Text(product["description"]),
            Text("${product["price"]}")
          ],
        ),
      ),
    );
  }
}
