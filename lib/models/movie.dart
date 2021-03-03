
class Movie {
  String name;
  String time;
  String year;
  String crew1;
  String crew2;
  String crew3;
  String image;
  String rating;
  String movieType;
  String crew1Image;
  String crew2Image;
  String crew3Image;
  String adultRating;
  String plotSummary;

  Movie(
      {this.name,
        this.time,
        this.year,
        this.crew1,
        this.crew2,
        this.crew3,
        this.image,
        this.rating,
        this.movieType,
        this.crew1Image,
        this.crew2Image,
        this.crew3Image,
        this.adultRating,
        this.plotSummary});

  Movie.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    time = json['time'];
    year = json['year'];
    crew1 = json['crew1'];
    crew2 = json['crew2'];
    crew3 = json['crew3'];
    image = json['image'];
    rating = json['rating'];
    movieType = json['movie_type'];
    crew1Image = json['crew1_image'];
    crew2Image = json['crew2_image'];
    crew3Image = json['crew3_image'];
    adultRating = json['adult_rating'];
    plotSummary = json['plot_summary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['time'] = this.time;
    data['year'] = this.year;
    data['crew1'] = this.crew1;
    data['crew2'] = this.crew2;
    data['crew3'] = this.crew3;
    data['image'] = this.image;
    data['rating'] = this.rating;
    data['movie_type'] = this.movieType;
    data['crew1_image'] = this.crew1Image;
    data['crew2_image'] = this.crew2Image;
    data['crew3_image'] = this.crew3Image;
    data['adult_rating'] = this.adultRating;
    data['plot_summary'] = this.plotSummary;
    return data;
  }
}