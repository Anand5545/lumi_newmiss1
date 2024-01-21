import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//here we learn to share and cpy an image in by clicking an image
void main(List<String> args) {
  runApp(MaterialApp(
    home: Bottomsheet(),
  ));
}

class Bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            showsheet(context);
          },
          child: Image.asset("asset/image/sreejith.png"),
        ),
      ),
    );
  }
}

void showsheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(children: [
          ListTile(
            leading: Icon(Icons.share),
            trailing: Text("Share"),
          ),
          ListTile(
            leading: Icon(Icons.copy),
            trailing: Text("Copy"),
          ),
        ]);
      });
}
//leading - Left side
//trailing -right side
