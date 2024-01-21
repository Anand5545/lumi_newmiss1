import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsDio extends StatelessWidget {
  int index;
  DetailsDio({required this.index})


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Text(controller.postList[index].id.toString())
          ],
        ),
      ),
    );
  }
}
