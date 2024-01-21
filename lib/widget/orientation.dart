import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: OrientationEx(),
  ));
}

class OrientationEx extends StatelessWidget {
  var orientation, height, width;

  @override
  Widget build(BuildContext context) {
    // getting the orientation of the app
    orientation = MediaQuery.of(context).orientation;
    // Size of the  window
    // size = MediaQuery.of(context).size;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Media Query"),
        ),
        body: orientation == Orientation.portrait
            ? Container(
                height: height / 2,
                width: width / 2,
                color: Colors.red,
              )
            : Container(
                height: height / 3,
                width: width / 3,
                color: Colors.yellowAccent,
              ));
  }
}
