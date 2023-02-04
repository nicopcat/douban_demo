import 'package:flutter/material.dart';
import 'package:douban_movie_demo/models/home_models.dart';

class MovieListItem extends StatelessWidget {

  final MovieItem item;

  MovieListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Text(item.title);
  }
}