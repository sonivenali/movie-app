import 'package:flutter/material.dart';

class GenreList extends StatefulWidget {
  @override
  _GenreListState createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  final movieType = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];
  String movieTab = "Action";

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: movieType.length,
      itemBuilder: (context, index) {
        return Type(movieType[index]);
      },
    );
  }

  Widget Type(String name) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 25),
      child: FlatButton(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.grey[350])
      ),
        color: Colors.white,
        onPressed: () {
          setState(() {
            movieTab = name;
          });
        },
        child: Text(
          name,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color:  Colors.grey[800]),
        ),
      ),
    );
  }
}
