import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movieapp/constants.dart';
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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.movie.image))),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 65,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset("assets/icons/star_fill.svg"),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    text: "${widget.movie.rating}"),
                                TextSpan(
                                    text: "/10",
                                    style: TextStyle(color: Colors.black)),
                                TextSpan(
                                    text: "\n150,212",
                                    style: TextStyle(color: kTextLightColor))
                              ]))
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                                height: 25,
                              ),
                              Text("Rate This"),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF51CF66),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: Text(
                                    "${widget.movie.rating}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Text("Metascore", style: TextStyle(fontSize: 15)),
                              Text("62 critic reviews",
                                  style: TextStyle(fontSize: 12)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                      child: BackButton(
                    color: Colors.white,
                  )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        widget.movie.name,
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: FlatButton(
                      color: Colors.pink[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                      size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
