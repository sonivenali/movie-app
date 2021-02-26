import 'package:flutter/material.dart';
import 'package:movieapp/screens/Genres.dart';
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
