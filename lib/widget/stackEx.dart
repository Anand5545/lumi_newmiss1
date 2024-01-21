import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Stack"),
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 300,
            // color: Colors.green,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://m.media-amazon.com/images/M/MV5BYTUyM2E0ODUtMzgxOS00MDRjLThkOGItNjM3ZmZmNDM4NDY5XkEyXkFqcGdeQXVyMTMwNjM2ODA5._V1_.jpg"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            // left: 50,
            // top: 50,
            left: 100,
            right: 100,
            child: Container(
              height: 400,
              width: 400,
              color: Colors.blue,
            ),
          ),
          Positioned(
            left: 100,
            right: 100,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
