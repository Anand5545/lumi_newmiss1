import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:lumi_newmiss1/state_mngt_provider/model1/movie.dart';

final List<Movie> Movielist = List.generate(
    100,
    (index) => Movie(
        time: "${Random().nextInt(100) + 60}minutes", title: "movie$index"));

class MovieProvider extends ChangeNotifier {
  final List<Movie> movies = Movielist;
  final List<Movie> wishlist = [];
}
