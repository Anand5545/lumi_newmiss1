import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView(
      //     gridDelegate:
      //         SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
      //     children: List.generate(
      //         20,
      //         (index) => Card(
      //               child: Image.network(
      //                   "https://www.shutterstock.com/image-vector/dotted-spiral-vortex-royaltyfree-images-600w-2227567913.jpg"),
      //             ))),

      //GridView(
      //gridDelegate:
      //  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      //children: List.generate(
      //  20,
      //(index) => Card(
      //    child: Text("Image"), //can give an image by
      //)),
      //),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisExtent:
                120, //for giving space inbetween mainaxis and crossaxis alignment
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        children: List.generate(
            20,
            (index) => Container(
                  color: Colors.black,
                  child: Image.network(
                      "https://www.shutterstock.com/image-vector/dotted-spiral-vortex-royaltyfree-images-600w-2227567913.jpg"),
                )),
      ),
    );
  }
}
