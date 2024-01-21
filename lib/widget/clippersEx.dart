import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ClippersEx(),
  ));
}

class ClippersEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clippers"),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              widthFactor: .4,
              heightFactor: .6,
              child: Image.asset("asset/image/sreejith.png"),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("asset/image/anand.png"),
          ),
          ClipOval(
            child: Image.asset("asset/image/sreejith.png"),
          ),
          ClipPath(
            clipper: OctagonalClipper(),
            child: Container(
              color: Colors.blueGrey,
              height: 300,
            ),
          ),
          ClipPath(
              clipper: OctagonalClipper(),
              child: Image.asset("asset/image/anand copy.jpg"))
        ],
      ),
    );
  }
}
