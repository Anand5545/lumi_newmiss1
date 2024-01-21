import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Gridview2(),
  ));
}

class Gridview2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 4,
      //         mainAxisSpacing: 5,
      //         crossAxisSpacing: 5),
      //     itemBuilder: (context, index) => Container(
      //           color: Colors.red,
      //           child: Text("user $index"),
      //         )),

      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 50),
          itemBuilder: (context, index) => Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Image.network(
                        "https://i.pinimg.com/originals/8b/16/7a/8b167af653c2399dd93b952a48740620.jpg"),
                    Text("data")
                  ],
                ),
              )),
    );
  }
}
