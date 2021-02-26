import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';
import 'package:movieapp/models/movie.dart';

class MoviesList extends StatefulWidget {
  @override
  _MoviesListState createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {
  final pageController = PageController();
  int initialPage = 1;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: PageView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) => MovieCard(
                movie: movies[index],
              )),
    );
  }
}

class MovieCard extends StatefulWidget {
  final Movie movie;

  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  _MovieCardState createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.movie.poster)
              )
            ),
          ),
        )
      ],
    );
  }
}
