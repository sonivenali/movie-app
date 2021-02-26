import 'package:flutter/material.dart';
import 'package:movieapp/screens/movie_list.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final categories = ["In Theatre", "Box Office", "Coming Soon"];
  String currentTab = "In Theatre";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return buildText(categories[index]);
            },
          ),
        ),
        Expanded(flex: 2, child: GenreList()),
        Expanded(flex: 13, child: MoviesList()),
        Expanded(flex: 2, child: Container())
      ],
    );
  }

  Widget buildText(String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentTab = name;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: currentTab == name ? Colors.black : Colors.grey),
            ),
            currentTab == name
                ? Container(
                    margin: EdgeInsets.symmetric(vertical: 1.2),
                    height: 6,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.pink),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}

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
