import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Carousel()));
}

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
            items: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/najeeb.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/sreejith.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/najeeb.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/image/sreejith.png"),
                    fit: BoxFit.fill)),
          ),
        ],
            options: CarouselOptions(
                //height: 400
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 1, //initial page by default 0
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayCurve: Curves.linear,
                autoPlayInterval: Duration(seconds: 4),
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal)));
  }
}
