import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movieapp/models/movie.dart';


class Services{
  Future<List<Movie>> getMovies() async {
    final response = await http.get(
      'https://api.mocki.io/v1/95f02d50',
    );
    final data = json.decode(response.body);
    List<Movie> items = [];
    for (Map<String, dynamic> u in data) {
      items.add(Movie.fromJson(u));
    }
    return items;
  }
}