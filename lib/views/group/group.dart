import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("小组"),
      ),
      body: Center(
        child: Text("小组",style: TextStyle(color:Colors.green,fontSize: 22,fontWeight: FontWeight.bold),
      ),
    ));
  }
}