import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Center(
        child: Text("我的",style: TextStyle(color:Colors.green,fontSize: 22,fontWeight: FontWeight.bold),
      ),
    ));
  }
}