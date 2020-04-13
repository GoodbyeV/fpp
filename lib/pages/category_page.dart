import 'package:flutter/material.dart';


class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child:Text("分类",style: TextStyle(fontSize: 18,
            color: Colors.blue,
            decoration: TextDecoration.underline),
        )),);
  }
}
