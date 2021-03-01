import 'package:flutter/material.dart';
import 'package:movieapp/models/movie.dart';
import 'package:movieapp/screens/movie_detail_screen.dart';
import 'package:movieapp/screens/home_screen.dart';

void main(){
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
