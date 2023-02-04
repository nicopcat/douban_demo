import 'package:flutter/material.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("书影音"),
      ),
      body: Center(
        child: Text("书影音",style: TextStyle(color:Colors.green,fontSize: 22,fontWeight: FontWeight.bold),
      ),
    ));
  }
}