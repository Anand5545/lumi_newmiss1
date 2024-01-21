import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: DrawerEx(),
    theme: ThemeData(primaryColor: Colors.lightGreenAccent),
  ));
}

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer Example"),
      ),
      drawer: Drawer(
        clipBehavior: Clip.hardEdge,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8xX3dhdGVyY29sb3JfaWxsdXN0cmF0aW9uX29mX2FfYmFuYW5hX3BsYW50X2lzb19mN2I0YjQ1MS03YTU5LTQyNmItOWVjYi02MWI1NzJjMDZhZGJfMS5wbmc.png"))),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/image/najeeb.png"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("asset/image/anand.png"),
                  )
                ],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("asset/image/gopika.png"),
                ),
                accountName: Text("Gopika Paduvazha"),
                accountEmail: Text("gopikapaduvazha@gmail.com")),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            )
          ],
        ),
      ),
    );
  }
}
