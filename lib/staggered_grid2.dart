import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// extend is used to know maximum extend

void main(List<String> args) {
  runApp(MaterialApp(
    home: Staggered_grid2(),
  ));
}

class Staggered_grid2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.extent(
        maxCrossAxisExtent: 520,
        children: [
          StaggeredGrid.extent(
            maxCrossAxisExtent: 520,
            children: [
              StaggeredGridTile.extent(
                  crossAxisCellCount: 4,
                  mainAxisExtent: 400,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("asset/image/najeeb.png"),
                            fit: BoxFit.fill)),
                  )),
              StaggeredGridTile.extent(
                  crossAxisCellCount: 19,
                  mainAxisExtent: 100,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("asset/image/najeeb.png"),
                            fit: BoxFit.fill)),
                  )),
              StaggeredGridTile.extent(
                  crossAxisCellCount: 50,
                  mainAxisExtent: 50,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                            image: AssetImage("asset/image/najeeb.png"),
                            fit: BoxFit.fill)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
