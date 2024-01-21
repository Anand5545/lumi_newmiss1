import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ExpansionTile1(),
    debugShowCheckedModeBanner: false,
  ));
}

class ExpansionTile1 extends StatelessWidget {
  var color1 = [Colors.red, Colors.yellow, Colors.green];
  var color2 = [Colors.blue, Colors.pink, Colors.blueGrey];
  var color3 = [Colors.purple, Colors.black, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
              title: Text("Tile1"),
              //  shape: StadiumBorder(),
              initiallyExpanded: true,
              collapsedTextColor: Colors.yellow,
              textColor: Colors.yellowAccent,
              collapsedBackgroundColor: Colors.lightBlueAccent,
              backgroundColor: Colors.grey,
              children: // [
                  //  // ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow,),)
                  // ],
                  List.generate(
                      3,
                      (index) => ListTile(
                            tileColor: Colors.black,
                            leading: CircleAvatar(
                              backgroundColor: color1[index],
                            ),
                          ))),
          ExpansionTile(
            title: Text("Tile2"),
            maintainState: true,
            backgroundColor: Colors.orangeAccent,
            children: List.generate(
                3,
                (index) => ListTile(
                        leading: CircleAvatar(
                      backgroundColor: color2[index],
                    ))),
          ),
          ExpansionTile(
              title: Text("Tile2"),
              backgroundColor: Colors.yellowAccent,
              children: List.generate(
                  3,
                  (index) => ListTile(
                        leading: CircleAvatar(
                          backgroundColor: color3[index],
                        ),
                      ))),
        ],
      ),
    );
  }
}
