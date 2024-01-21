import 'package:flutter/material.dart';

class wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
      ),
      body: ListView.builder(itemBuilder: wishlist.le),
    );
  }
}
