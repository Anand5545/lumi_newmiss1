import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: SliverEx(),
  ));
}

class SliverEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text("Slivers"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  50,
                  (index) => ListTile(
                        leading: Icon(Icons.person),
                        title: Text("User$index"),
                      ))))
        ],
      ),
    );
  }
}
