import 'package:flutter/material.dart';
import 'package:movieapp/screens/homeScreen.dart';

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
