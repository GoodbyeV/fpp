import 'package:flutter/material.dart';


class Member extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child:Text("个人主页",style: TextStyle(fontSize: 18,
            color: Colors.blue,
            decoration: TextDecoration.underline),
        )),);
  }
}
