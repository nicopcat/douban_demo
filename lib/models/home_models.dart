class Person {
  late String name;
  late String avatarURL;

  Person.fromMap(Map<String, dynamic> json) {
    name = json["name"];
    avatarURL =json["avatars"] != null? json["avatars"]["medium"]:'';
  }
}

class Actor extends Person {
  Actor.fromMap(Map<String, dynamic> json): super.fromMap(json);
}

class Director extends Person {
  Director.fromMap(Map<String, dynamic> json): super.fromMap(json);
}

int counter = 1;

class MovieItem {
  late int rank;
  late String imageURL;
  late String title;
  late String playDate;
  late double rating;
  late List<String> genres;
  late List<Actor> casts;
  late Director director;
  late String originalTitle;

  MovieItem.fromMap(Map<String, dynamic> json) {
    rank = counter++;
    imageURL = json["images"]["medium"]??"";
    title = json["title"]??"";
    playDate = json["year"]??"";
    rating = json["rating"]["average"]??"";
    genres = json["genres"].cast<String>();
    casts = json["casts"].length != 0 ? (json["casts"] as List<dynamic>).map((item) {
      return Actor.fromMap(item);
    }).toList() : [];
    director = Director.fromMap(json["directors"][0]);
    originalTitle = json["original_title"]??"";
  }
}
