import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fpp/widget/swiper.dart';


class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homeState();
  }

}

class _homeState extends State<HomePage>{
  var responseResult="";
  var images=[""];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return bulidContainer(context);
  }

  Container bulidContainer(BuildContext context){
    return Container(

    )
  }

  @override
  void initState() {
    super.initState();

  }
}
