import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Faqs extends StatefulWidget {
  @override
  _FaqsState createState() => _FaqsState();
}
class _FaqsState extends State<Faqs> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:Color.fromRGBO(247, 190, 197, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(247, 190, 197, 1),
        centerTitle: true,
        title: new Text('FAQ’S'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[

              _homeList('Does your company test on animals ?'),
              _homeList2('Why has my favorite product been'),
              _homeList3('Does your company test on animals ?'),
              _homeList5('Why has my favorite product been'),
              _homeList4('Does your company test on animals ?'),

        ],
      ),
    );
  }

  _homeList(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child:
      InkWell(
        child: Container(
          height: 80.0,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(left: BorderSide(width: 5.0,color: Color.fromRGBO(19, 159, 141, 1))),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10.0,),
                child:Center( child:Text('Does your company test on animals ?',textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 18.0,
                    color: Color.fromRGBO(19, 159, 141, 1),
                  ),
                ) ,
                ),
              )
            ],
          ),
        ),
        onTap: (){},
      ),

    );
  }

  _homeList2(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child: Container(
        height: 80.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(left: BorderSide(width: 5.0,color: Color.fromRGBO(19, 159, 141, 1))),
              ),
            ),
            Container(
              child:
              Center(child: Text('Why has my favorite product been',style: TextStyle(fontSize: 18.0,
                  color: Color.fromRGBO(19, 159, 141, 1)),
              ) ,
              ),

            )
          ],
        ),
      ),
    );
  }

  _homeList3(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child: Container(
        height: 80.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(left: BorderSide(width: 5.0,color: Color.fromRGBO(19, 159, 141, 1))),
              ),
            ),
            Container(
              child:
              Center(child: Text('Does your company test on animals ?',style: TextStyle(fontSize: 18.0,
                  color: Color.fromRGBO(19, 159, 141, 1)),
              ) ,
              ),

            )
          ],
        ),
      ),
    );
  }


  _homeList5(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child:
      InkWell(child: Container(
        height: 80.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(left: BorderSide(width: 5.0,color: Color.fromRGBO(19, 159, 141, 1))),
              ),
            ),
            Container(
              child: Center(child: Text('Why has my favorite product been',style: TextStyle(fontSize: 18.0,
                  color: Color.fromRGBO(19, 159, 141, 1)),) ,) ,
            )
          ],
        ),
      ) ,
        onTap: (){Navigator.of(context).pushNamed('/FaqNews');},
      ),

    );
  }

  _homeList4(String imgPath ){
    return Padding(
      padding: EdgeInsets.only(top: 20.0,left: 10.0,right: 10.0),
      child: Container(
        height: 80.0,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(left: BorderSide(width: 5.0,color: Color.fromRGBO(19, 159, 141, 1))),
              ),
            ),
            Container(
              child: Center(child: Text('Does your company test on animals ?',style: TextStyle(fontSize: 18.0,
                  color: Color.fromRGBO(19, 159, 141, 1)),) ,) ,
            )
          ],
        ),
      ),
    );
  }
}

