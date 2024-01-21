import 'package:flutter/material.dart';
//class work done at home

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview6(),
  ));
}

class Gridview6 extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.notification_add,
    Icons.camera,
    Icons.star_half,
    Icons.wifi_lock_outlined,
    Icons.message,
    Icons.phone,
    Icons.message,
    Icons.window,
    Icons.settings,
    Icons.mic_external_off,
    Icons.file_copy
  ];

  var color1 = [
    Colors.blue,
    Colors.orangeAccent,
    Colors.green,
    const Color.fromARGB(255, 205, 10, 75),
    Colors.orange,
    Colors.blueGrey,
    Color.fromARGB(255, 161, 11, 134),
    Color.fromARGB(255, 14, 116, 73),
    Color.fromARGB(255, 148, 109, 2),
    Color.fromARGB(255, 194, 118, 3),
    const Color.fromARGB(255, 187, 40, 89),
    Colors.lightGreen
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 90,
            ),
            childrenDelegate: SliverChildBuilderDelegate(
                childCount: 12,
                (context, index) => Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Icon(
                              icons[index],
                              size: 30,
                              color: Colors.black45,
                            ),
                          ),
                          Expanded(
                            child: Text("Heart\nShaker",
                                // textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black)),
                          )
                        ],
                      ),
                      color: color1[index],
                    ))),
      ),
    );
  }
}
