import 'package:flutter/material.dart';


class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child:Text("购物车",style: TextStyle(fontSize: 18,
            color: Colors.blue,
            decoration: TextDecoration.underline),
        )),);
  }
}
