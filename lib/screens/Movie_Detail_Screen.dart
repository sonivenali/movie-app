import 'package:flutter/material.dart';
import 'package:movieapp/models/movie.dart';

class MovieDetails extends StatefulWidget {
  final Movie movie;

  MovieDetails(this.movie);

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,
                            image: AssetImage(widget.movie.backdrop))),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
