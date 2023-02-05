import 'package:flutter/material.dart';
import 'package:douban_movie_demo/http_utils/home_request.dart';
import 'package:douban_movie_demo/models/home_models.dart';
import 'package:douban_movie_demo/views/home/components/movie_list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),

      body: HomeContent()   
    );
  }
}

class HomeContent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeContentState();  
  }
}

class HomeContentState extends State{
  List<MovieItem> movies = [];

  // 初始化首页的网络请求对象
  HomeRequest homeRequest = HomeRequest();

  void getMovieTopList() {
    homeRequest.getMovieTopList().then((result) {
      setState(() {
        movies.addAll(result);
      });
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovieTopList();
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: movies.length,
      itemBuilder:  (context, index) {
        return Padding(   
          padding: EdgeInsets.all(10.0),
          child: MovieListItem(movies[index]));
    });
  }
}

