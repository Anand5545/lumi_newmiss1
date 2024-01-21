// Grid for different grid shape

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Staggered_Grid(),
  ));
}

class Staggered_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 5,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 3,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("asset/image/najeeb.png"),
                    fit: BoxFit.fill,
                  )),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("asset/image/sreejith.png"),
                    fit: BoxFit.fill,
                  )),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 3,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("asset/image/anand copy.jpg"),
                    fit: BoxFit.fill,
                  )),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("asset/image/anand copy.jpg"),
                    fit: BoxFit.fill,
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
