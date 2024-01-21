import 'package:flutter/material.dart';
import 'package:lumi_newmiss1/state_mngt_provider/model1/movie.dart';
import 'package:lumi_newmiss1/state_mngt_provider/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var wishlistt = context.watch<MovieProvider>().wishlist;
    var movie = context.watch<MovieProvider>().movies;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            label: Text("Wishlist"),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(movie[index].title),
                subtitle: Text(movie[index].time),
                trailing:
                    IconButton(onPressed: () {
                      if(!wishlistt.contains(movie[index])){
                        context.read<MovieProvider>()
                        .add 
                      }

                    }, icon: Icon(Icons.favorite)),
              ),
            );
          }))
        ],
      ),
    );
  }
}
