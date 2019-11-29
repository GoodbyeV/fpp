import 'package:flutter/material.dart';


class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _indexState();
  }
}

class _indexState extends State<IndexPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: BottomNavigationBar(),);
  }
  final List<BottomNavigationBarItem>   bottomItems=[
    new BottomNavigationBarItem(icon: null,
    title: Text("首页")),
    new BottomNavigationBarItem(icon: null,
    title: Text("分类")),
    new BottomNavigationBarItem(icon: null,
        title: Text("购物车")),
    new BottomNavigationBarItem(icon: null,
    title: Text("我的")),
  ];
}

