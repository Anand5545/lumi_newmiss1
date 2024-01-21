import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: gridview5(),
  ));
}

class gridview5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        childrenDelegate:
            SliverChildBuilderDelegate((context, index) => Container(
                  child: Image.network(
                    "https://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c325.png",
                    fit: BoxFit.fill,
                  ),
                )),
      ),
      // body: GridView.custom(
      //   gridDelegate:
      //       SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 5),
      //   childrenDelegate: SliverChildListDelegate(List.generate(
      //       20,
      //       (index) => Card(
      //             child: Text("hello"),
      //           ))),
      // ),
    );
  }
}
