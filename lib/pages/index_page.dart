import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fpp/pages/cart_page.dart';
import 'package:fpp/pages/category_page.dart';
import 'package:fpp/pages/home_page.dart';
import 'package:fpp/pages/member_page.dart';


class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexState();
  }
}
class _IndexState extends State<IndexPage>{
  final pages=[HomePage(),Category(),Cart(),Member()];
  int pageIndex=0;
  var currentPage;
  final List<BottomNavigationBarItem>   bottomItems=[
    new BottomNavigationBarItem(icon:Icon(CupertinoIcons.home),
    title: Text("首页")),
    new BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),
    title: Text("分类")),
    new BottomNavigationBarItem(icon:  Icon(CupertinoIcons.shopping_cart),
        title: Text("购物车")),
    new BottomNavigationBarItem(icon:  Icon(CupertinoIcons.profile_circled),
    title: Text("我的")),
  ];

  @override
  void initState() {
    currentPage=pages[pageIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      items: bottomItems,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      onTap: (index){
        setState(() {
          pageIndex=index;
          currentPage=pages[pageIndex];
        });
      },
    ),
    body: currentPage);
  }
}

