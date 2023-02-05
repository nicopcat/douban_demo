  import 'package:douban_movie_demo/http_utils/http_request.dart';
  import 'package:douban_movie_demo/models/home_models.dart';

  class HomeRequest {
  Future<List<MovieItem>> getMovieTopList() async {
    // 1.拼接URL
    const url = "https://api.douban.com/v2/movie/weekly?apikey=0b2bdeda43b5688921839c8ecb20399b";

    // 2.发送请求
    final result = await HttpRequest.request(url);
    // 3.转成模型对象
    final subjects = result["subjects"];
    List<MovieItem> movies = [];
    for (var sub in subjects) {
      var subjects = sub["subject"];
      movies.add(MovieItem.fromMap(subjects));
    }

    return movies;
  }
}