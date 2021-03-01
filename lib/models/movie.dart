
class Movie {
  String name;
  String year;
  String image;
  String rating;

  Movie({this.name, this.year, this.image, this.rating});

  Movie.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    year = json['year'];
    image = json['image'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['year'] = this.year;
    data['image'] = this.image;
    data['rating'] = this.rating;
    return data;
  }
}
