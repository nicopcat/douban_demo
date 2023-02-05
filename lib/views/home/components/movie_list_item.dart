import 'package:flutter/material.dart';
import 'package:douban_movie_demo/models/home_models.dart';

class MovieListItem extends StatelessWidget {
  final MovieItem item;
  const MovieListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 209, 207, 207),
            width: 10.0
          )
        )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rankWidget(),
          Text('2'),
          orginalNameWidget(),
          SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }

  Widget rankWidget (){
  return Container(
    decoration:BoxDecoration(
      color: Color.fromARGB(255,244, 212, 133),
      borderRadius:BorderRadius.circular(5.0)
    ),
    padding: EdgeInsets.all(4.0),
    child:   Text('No.${item.rank}',style: TextStyle(color: Color.fromRGBO(110, 78, 0,1)),),
  );
  

}

Widget orginalNameWidget(){
  return Container(
    decoration:BoxDecoration(
      color: Color.fromRGBO(236, 232, 228, 1),
      borderRadius:BorderRadius.circular(5.0)
    ),
    padding: EdgeInsets.all(10.0),
    width: double.infinity,
    child: Text('${item.originalTitle}',
      style: TextStyle(
        color: Color.fromRGBO(134, 131, 131, 1)),),
  );

}
}

