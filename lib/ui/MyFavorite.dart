import 'package:flutter/material.dart';
import './FirstPage.dart' as firstpage ;
import './SecondPage.dart' as secondpage ;
class MyFavorite extends StatefulWidget  {
  @override
  _MyFavoriteState createState() => _MyFavoriteState();
}

class _MyFavoriteState extends State<MyFavorite> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor:Color.fromRGBO(247, 190, 197, 1),
    appBar: AppBar(
    backgroundColor: Color.fromRGBO(247, 190, 197, 1),
    centerTitle: true,
    title: new Text('My Favorite',style: TextStyle(color: Color.fromRGBO(191, 120, 129, 1)),),
      bottom: new TabBar(
        controller: controller,
          tabs: <Widget>[
        new Tab(text: 'Shops',),
        new Tab(text: 'Product',)
      ]),
    ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new firstpage.FirstPage(),
          new secondpage.SecondPage(),

        ],
      ) ,
    );
  }
}