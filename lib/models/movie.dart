
class Movie {
  String name;
  String time;
  String year;
  String image;
  String rating;
  String adultRating;

  Movie(
      {this.name,
        this.time,
        this.year,
        this.image,
        this.rating,
        this.adultRating});

  Movie.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    time = json['time'];
    year = json['year'];
    image = json['image'];
    rating = json['rating'];
    adultRating = json['adult_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['time'] = this.time;
    data['year'] = this.year;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['adult_rating'] = this.adultRating;
    return data;
  }
}
